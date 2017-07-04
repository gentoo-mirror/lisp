# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="A library for converting values of type FLOAT and DOUBLE-FLOAT to and from their binary representation as defined by IEEE 754."
HOMEPAGE="http://common-lisp.net/project/ieee-floats/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/fiveam"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml doc/*
}
