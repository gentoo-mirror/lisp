# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="A Fast R6RS Scheme interpreter."
HOMEPAGE="http://code.google.com/p/mosh-scheme/"
SRC_URI="http://mosh-scheme.googlecode.com/files/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

IUSE=""

src_prepare() {
	echo ".section .note.GNU-stack,\"\",%progbits" >> src/ffi_stub_i386.S || die
}

src_compile() {
	emake || die
}

src_install () {
	emake DESTDIR="${D}" install || die
}
