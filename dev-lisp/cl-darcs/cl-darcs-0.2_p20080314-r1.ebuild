# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A client for the darcs version control system written in Common Lisp."
HOMEPAGE="http://common-lisp.net/project/cl-darcs
		http://www.cliki.net/CL-DARCS"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

DEPEND="sys-apps/texinfo
		doc? ( virtual/texi2dvi )"
RDEPEND="dev-lisp/split-sequence
		dev-lisp/drakma
		dev-lisp/puri
		dev-lisp/trivial-gray-streams
		dev-lisp/ironclad
		dev-lisp/flexi-streams
		dev-lisp/cl-fad
		dev-lisp/cl-ppcre
		dev-lisp/cl-difflib"

src_compile() {
	cd doc || die
	makeinfo ${PN}.texi -o ${PN}.info || die "Cannot build info docs"
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			texi2pdf ${PN}.texi -o ${PN}.pdf || die "Cannot build PDF docs"
	fi
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc README
	dodoc doc/${PN}.info
	use doc && dodoc doc/${PN}.pdf
}
