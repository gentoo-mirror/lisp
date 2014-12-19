# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 elisp eutils

DESCRIPTION="SLIME, the Superior Lisp Interaction Mode (Extended)"
HOMEPAGE="http://common-lisp.net/project/slime/"
SRC_URI="http://dev.gentoo.org/~gienah/snapshots/${P}.tgz"
S="${WORKDIR}/slime-${PV:5:4}-${PV:9:2}-${PV:11:2}"

LICENSE="GPL-2 xref? ( xref.lisp )"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc xref"

RDEPEND="virtual/commonlisp
		dev-lisp/asdf"
DEPEND="${RDEPEND}
		sys-apps/texinfo
		doc? ( virtual/texi2dvi )"

CLPACKAGE=swank
CLSYSTEMS=swank
SITEFILE=70${PN}-gentoo.el

src_prepare() {
	epatch "${FILESDIR}"/2.0_p20110617/fix-inspect-presentations.patch
	epatch "${FILESDIR}"/2.0_p20130214/gentoo-module-load.patch
	epatch "${FILESDIR}"/2.0_p20110617/gentoo-dont-call-init.patch

	# Eliminate Debian-specific rule
	sed -i '/^section :=/d' doc/Makefile || die "sed doc/Makefile failed"

	# extract date of last update from ChangeLog, bug 233270
	SLIME_CHANGELOG_DATE=$(awk '/^[-0-9]+ / { print $1; exit; }' ChangeLog)
	[ -n "${SLIME_CHANGELOG_DATE}" ] || die "cannot determine ChangeLog date"

	# SLIME uses the changelog date to make sure that the emacs side and the CL side
	# are in sync. We hardcode it instead of letting slime determine it at runtime
	# because ChangeLog doesn't get installed to $EMACSDIR
	epatch "${FILESDIR}"/2.0_p20130930/gentoo-changelog-date.patch
	if [[ "${PV}" != "2.0_p20130214" ]]; then
		# lately upstream have not updated ChangeLog, so hard code it to a later date.
		SLIME_CHANGELOG_DATE="2013-09-30"
	fi
	sed -i "/(defvar \*swank-wire-protocol-version\*/s:nil:\"${SLIME_CHANGELOG_DATE}\":" swank.lisp \
		|| die "sed swank.lisp failed"
	sed -i "s:@SLIME-CHANGELOG-DATE@:${SLIME_CHANGELOG_DATE}:" slime.el \
		|| die "sed slime.el failed"
	sed -i "s/@itemx INIT-FUNCTION/@item INIT-FUNCTION/" doc/slime.texi \
		|| die "sed doc/slime.texi failed"

	# Remove xref.lisp (which is non-free) unless USE flag is set
	use xref || rm -f xref.lisp
}

src_compile() {
	elisp-compile *.el || die
	BYTECOMPFLAGS="${BYTECOMPFLAGS} -L contrib -l slime" \
		elisp-compile contrib/*.el || die
	emake -j1 -C doc slime.info || die "Cannot build info docs"

	if use doc; then
		VARTEXFONTS="${T}"/fonts \
			emake -j1 -C doc slime.pdf || die "emake doc failed"
	fi
}

src_install() {
	## install core
	elisp-install ${PN} *.el "${FILESDIR}"/swank-loader.lisp \
		|| die "Cannot install SLIME core"
	sed "s:/usr/:${EPREFIX}&:g" "${FILESDIR}"/2.0_p20110617/${SITEFILE} \
		>"${T}"/${SITEFILE} || die "sed failed"
	elisp-site-file-install "${T}"/${SITEFILE} || die
	cp "${FILESDIR}"/2.0_p20110617/swank.asd "${S}"
	# remove upstream swank-loader, since it won't be used
	rm "${S}"/swank-loader.lisp
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf swank.asd

	## install contribs
	elisp-install ${PN}/contrib/ contrib/*.{el,scm,goo} \
		|| die "Cannot install contribs"
	common-lisp-install-sources contrib/*.lisp

	## install docs
	dodoc README* ChangeLog HACKING NEWS PROBLEMS
	newdoc contrib/README README.contrib
	newdoc contrib/ChangeLog ChangeLog.contrib
	doinfo doc/slime.info
	use doc && dodoc doc/slime.pdf
}
