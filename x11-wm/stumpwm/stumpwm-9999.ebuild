# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Stumpwm is a tiling, keyboard driven X11 Window Manager written entirely in Common Lisp."
HOMEPAGE="http://www.nongnu.org/stumpwm/index.html"
EGIT_REPO_URI="git://github.com/stumpwm/stumpwm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc clisp emacs +sbcl"

DEPEND="dev-lisp/common-lisp-controller
	virtual/commonlisp
	dev-lisp/cl-ppcre
	doc? ( sys-apps/texinfo )"

RDEPEND="${DEPEND}
	emacs? ( app-emacs/slime )
	!clisp? ( !sbcl? ( !amd64? ( dev-lisp/cmucl ) ) )
	clisp? ( >=dev-lisp/clisp-2.38-r2[X,-new-clx] )
	sbcl?  ( >=dev-lisp/sbcl-1.1.15 dev-lisp/clx )
	doc? ( sys-apps/texinfo )"

do_doc() {
	local pdffile="${PN}.pdf"

	dodoc AUTHORS NEWS README.md
	texi2pdf -o "${pdffile}" "${PN}.texi.in" && dodoc "${pdffile}" || die
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	use doc && do_doc
}
