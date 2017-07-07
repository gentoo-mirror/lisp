# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A set of dynamic index data structures for spatially-extended data"
HOMEPAGE="http://www.cliki.net/spatial-trees"
SRC_URI="http://ftp.linux.org.uk/pub/lisp/cclan/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources *.lisp LICENCE TODO
	common-lisp-install-asdf
	dodoc BUGS TODO
}
