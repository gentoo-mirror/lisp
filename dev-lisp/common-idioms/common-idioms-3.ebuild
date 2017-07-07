# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A small Common Lisp library implementing various Common Lisp idioms."
HOMEPAGE="http://www.unmutual.info/software/old/common-idioms/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm -f "${S}"/Makefile
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc README
	dohtml docs/*.{html,css}
	dohtml -r docs/icons
}
