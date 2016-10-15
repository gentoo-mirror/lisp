# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

inherit common-lisp-3

DESCRIPTION='ODD-STREAMS is a library which implements binary streams with "odd" byte sizes.'
HOMEPAGE="http://weitz.de/odd-streams/
		http://www.cliki.net/odd-streams"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/trivial-gray-streams-20060925"

src_install() {
	common-lisp-install-sources *.lisp test/
	common-lisp-install-asdf
	dodoc CHANGELOG.txt
	dohtml doc/index.html
}
