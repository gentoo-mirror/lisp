# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Usocket is a universal socket library for Common Lisp."
HOMEPAGE="http://common-lisp.net/project/usocket/"
SRC_URI="https://github.com/usocket/usocket/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/split-sequence
		dev-lisp/rt"

CLSYSTEMS="${PN} ${PN}-server ${PN}-test"

src_install() {
	common-lisp-install-sources .
	common-lisp-install-asdf
	dodoc TODO README.md doc/*.txt
	docinto notes && dodoc notes/*.txt
}
