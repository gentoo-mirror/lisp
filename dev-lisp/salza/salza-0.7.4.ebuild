# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION='Salza is a Common Lisp Library that provides an FFI-less interface to the ZLIB and DEFLATE compressed data formats.'
HOMEPAGE="http://www.cliki.net/Salza"
SRC_URI="http://www.xach.com/lisp/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc README ChangeLog
	docinto examples && dodoc examples/*
}
