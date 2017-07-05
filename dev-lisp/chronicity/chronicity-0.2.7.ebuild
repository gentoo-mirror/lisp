# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A natural language date and time parser for Common Lisp."
HOMEPAGE="http://chaitanyagupta.com/lisp/chronicity/"
SRC_URI="https://github.com/chaitanyagupta/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/cl-ppcre-2.0.0
		 dev-lisp/cl-interpol
		 >=dev-lisp/local-time-1.0.1"

CLPACKAGES="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources src test
	common-lisp-install-asdf
	dodoc README
}
