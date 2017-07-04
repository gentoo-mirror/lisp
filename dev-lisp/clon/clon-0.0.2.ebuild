# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp task scheduler library similar to Unix cron."
HOMEPAGE="http://www.cliki.net/Clon"
SRC_URI="http://quotenil.com/clon/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/bordeaux-threads
		dev-lisp/trivial-timers"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc ChangeLog README TODO doc/example.lisp
}
