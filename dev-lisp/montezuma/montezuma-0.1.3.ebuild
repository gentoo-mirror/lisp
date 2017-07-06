# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A fast, useful text search engine library written entirely in pure Common Lisp."
HOMEPAGE="http://code.google.com/p/montezuma/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-ppcre
		 dev-lisp/cl-fad
		 dev-lisp/babel"

CLSYSTEMS="${PN} contrib/${PN}-indexfiles/${PN}-indexfiles"

src_prepare() {
	rm -rf "${S}"/contrib/montezuma-indexfiles/{COPYING,_darcs}
}

src_install() {
	common-lisp-install-sources src/ contrib/ tests/
	common-lisp-install-asdf
	dodoc BUGS.txt README.txt TUTORIAL.txt
}
