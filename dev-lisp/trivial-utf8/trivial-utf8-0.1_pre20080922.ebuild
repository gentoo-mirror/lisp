# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="A small library for doing UTF-8-based input and output."
HOMEPAGE="http://common-lisp.net/project/trivial-utf-8/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

CLPACKAGE="trivial-utf-8"
CLSYSTEMS="trivial-utf-8"

src_install() {
	common-lisp-install-sources *.lisp test.txt
	common-lisp-install-asdf
	dohtml doc/*
}
