# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P=${PN}_${PV}

DESCRIPTION="A system for automatically generating common lisp foreign function interface (FFI) bindings from C and C++ code."
HOMEPAGE="http://www.cyrusharmon.org/projects?project=gcc-xml-ffi"
SRC_URI="http://cyrusharmon.org/static/releases/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/ch-util
		dev-lisp/uffi
		dev-lisp/xmls
		dev-cpp/gccxml"

CLSYSTEMS="${PN} ${PN}-test"

S="${WORKDIR}"/${MY_P}

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm "${S}"/Makefile
	epatch "${FILESDIR}"/${PV}-fix-asd.patch
}

src_install() {
	common-lisp-install-sources src test version.lisp-expr
	common-lisp-install-asdf
	dodoc ChangeLog README
}
