# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="XMLS is a small, simple, non-validating XML parser for Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/xmls/
	http://www.cliki.net/xmls"
SRC_URI="http://www.common-lisp.net/project/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources .
	common-lisp-install-asdf
	dodoc Changelog
	dohtml README.html
	docinto tests
	dodoc -r tests/*
	dodoc run-tests.sh
}
