# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools common-lisp-3 git-r3 xdg-utils

DESCRIPTION="Stumpwm is a Window Manager written entirely in Common Lisp."
HOMEPAGE="https://stumpwm.github.io/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="contrib doc emacs clisp ecl +sbcl"

RDEPEND="dev-lisp/alexandria
		dev-lisp/cl-ppcre
		dev-lisp/clx
		>=dev-lisp/sbcl-1.3.0
		emacs? ( >=app-editors/emacs-23.1:* app-emacs/slime )"
DEPEND="${RDEPEND}
		sys-apps/texinfo
		doc? ( virtual/texi2dvi )"

CLPKGDIR="${CLSOURCEROOT}/${CLPACKAGE}"
CONTRIBDIR="${CLPKGDIR}/contrib"

do_doc() {
	local pdffile="${PN}.pdf"

	texi2pdf -o "${pdffile}" "${PN}.texi" && dodoc "${pdffile}" || die
	cp "${FILESDIR}/README.Gentoo" . && sed -i "s:@VERSION@:${PV}:" README.Gentoo || die
	dodoc AUTHORS NEWS README.md README.Gentoo
	doinfo "${PN}.info"
	docinto examples ; dodoc sample-stumpwmrc.lisp
}

do_contrib() {
	emake install-modules
	rm -r "${D}${CONTRIBDIR}"/.git* || die
}

src_prepare() {
	default
	xdg_environment_reset
	if use contrib ; then
		# Fix contrib directory
		sed -i -e "s|@CONTRIB_DIR@|@MODULE_DIR@|" make-image.lisp.in || die
		sed -i -e "s|\~\/.${CLPACKAGE}\.d/modules|${D}${CONTRIBDIR}|" Makefile.in || die
		sed -i -e "s|\${HOME}/\.${CLPACKAGE}\.d/modules|${CONTRIBDIR}|" configure.ac || die
	fi
	eautoreconf
}

src_compile() {
	emake -j1
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dobin "${PN}"
	use doc && do_doc
	use contrib && do_contrib
}
