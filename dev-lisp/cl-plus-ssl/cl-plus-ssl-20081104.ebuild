# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PN=cl+ssl
MY_P=${MY_PN}-${PV:0:4}-${PV:4:2}-${PV:6:2}

DESCRIPTION="A simple Common Lisp interface to OpenSSL."
HOMEPAGE="https://cl-plus-ssl.common-lisp.dev/"
SRC_URI="https://cl-plus-ssl.common-lisp.dev/download/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND=">=dev-lisp/cffi-0.9.2_p20080723
		dev-lisp/trivial-gray-streams
		dev-lisp/flexi-streams
		dev-libs/openssl"

CLPACKAGE=${MY_PN}
CLSYSTEMS=${MY_PN}

S="${WORKDIR}"/${MY_P}

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm "${S}"/Makefile || die
	sed -i "s,/usr/lib,/usr/$(get_libdir),g" "${S}"/${MY_PN}.asd || die
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	docinto html
	dodoc index.{css,html}
}
