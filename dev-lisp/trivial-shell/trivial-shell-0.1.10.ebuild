# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="LIFT is an SUnit variant and much much more."
HOMEPAGE="http://common-lisp.net/project/trivial-shell"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources dev/{*.lisp,mcl} tests
	common-lisp-install-asdf
	dodoc *.config
}
