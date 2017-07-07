# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Library for serializing and deserializing Common Lisp objects from streams."
HOMEPAGE="http://common-lisp.net/project/cl-store"
EGIT_REPO_URI="https://github.com/skypher/${PN}.git"

LICENSE="MIT"
SLOT="0"
IUSE="doc"

DEPEND="sys-apps/texinfo
		doc? ( virtual/texi2dvi )"
RDEPEND="dev-lisp/rt"

src_prepare() {
	rm -f xml* */custom-xml.lisp
	eapply_user
}

src_compile() {
	cd doc || die
	makeinfo ${PN}.texi -o ${PN}.info || die
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			texi2pdf ${PN}.texi -o ${PN}.pdf || die
	fi
}

src_install() {
	common-lisp-install-sources *.lisp acl allegrocl clisp \
								cmucl ecl lispworks openmcl sbcl
	common-lisp-install-asdf
	doinfo doc/${PN}.info
	use doc && dodoc doc/{index.html,style.css,${PN}.pdf}
}
