# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 eutils

DESCRIPTION="A simple library for generating a backtrace portably."
HOMEPAGE="http://common-lisp.net/project/trivial-backtrace"
SRC_URI="http://dev.gentoo.org/~nimiux/dev-lisp/${PN}/${P}.tar.gz"

LICENSE="MIT BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}/${PN}"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-3_src_install
	dodoc *.config
}
