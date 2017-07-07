# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="WebSockets for Hunchentoot"
HOMEPAGE="https://github.com/lokedhs/hunchensocket"
SRC_URI="https://github.com/joaotavora/${PN}/archive/1.0.0.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lisp/hunchentoot
	dev-lisp/alexandria
	dev-lisp/ironclad
	dev-lisp/flexi-streams
	dev-lisp/chunga
	dev-lisp/trivial-utf8
	dev-lisp/trivial-backtrace
	dev-lisp/bordeaux-threads
	dev-lisp/cl-fad"

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all VERSION
}
