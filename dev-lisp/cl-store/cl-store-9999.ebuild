# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="CL-STORE is a Common Lisp library for serializing and deserializing Common Lisp objects."
HOMEPAGE="http://common-lisp.net/project/cl-store"
EGIT_REPO_URI="https://github.com/skypher/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

DEPEND="sys-apps/texinfo
		doc? ( virtual/texi2dvi )"
RDEPEND="dev-lisp/rt"

src_prepare() {
	rm xml* */custom-xml.lisp || die
}

src_compile() {
	cd doc || die
	makeinfo ${PN}.texi -o ${PN}.info || die "Cannot build info docs"
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			texi2pdf ${PN}.texi -o ${PN}.pdf || die "Cannot build PDF docs"
	fi
}

src_install() {
	common-lisp-install-sources *.lisp \
		acl allegrocl clisp cmucl ecl lispworks openmcl sbcl
	common-lisp-install-asdf
	doinfo doc/${PN}.info
	use doc && dodoc doc/${PN}.pdf
	use doc && dohtml doc/{index.html,style.css}
}
