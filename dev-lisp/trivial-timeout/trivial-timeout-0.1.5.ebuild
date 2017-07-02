# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="Simple library for asynchronous timeouts."
HOMEPAGE="http://common-lisp.net/project/trivial-timeout"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources *.config dev/*.lisp tests
	common-lisp-install-asdf
}
