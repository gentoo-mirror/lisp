# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="S-XML is a simple XML parser implemented in Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/s-xml/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm "${S}"/Makefile
}

src_install() {
	common-lisp-install-sources src
	common-lisp-install-asdf
	dohtml doc/{index,S-XML}.html doc/style.css
}
