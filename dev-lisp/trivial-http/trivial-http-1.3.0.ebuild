# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Library for doing HTTP POST, HEAD and GET over a socket interface."
HOMEPAGE="http://common-lisp.net/project/trivial-http/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/usocket
		dev-lisp/lift"

src_install() {
	common-lisp-install-sources {dev,tests}/*.lisp
	common-lisp-install-asdf
}
