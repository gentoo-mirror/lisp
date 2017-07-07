# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="Colorize is a Common Lisp application for colorizing source code."
HOMEPAGE="http://www.cliki.net/colorize"
SRC_URI="http://www.unmutual.info/software/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/html-encode
		dev-lisp/split-sequence
		~dev-lisp/hyperspec-7.0"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-hyperspec-pathname-gentoo.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp *-expr Mop_Sym.txt
	common-lisp-install-asdf
}
