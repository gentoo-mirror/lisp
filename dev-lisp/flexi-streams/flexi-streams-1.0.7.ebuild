# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

inherit common-lisp-2

DESCRIPTION="Flexible bivalent streams for Common Lisp"
HOMEPAGE="http://weitz.de/flexi-streams/
		http://www.cliki.net/flexi-streams/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		>=dev-lisp/trivial-gray-streams-20060925"

src_install() {
	common-lisp-install *.{lisp,asd}
	common-lisp-symlink-asdf
	dodoc CHANGELOG
	dohtml doc/index.html
	docinto html
	dodoc doc/foo.txt
}
