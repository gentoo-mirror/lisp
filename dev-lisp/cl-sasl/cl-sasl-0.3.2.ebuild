# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_P="v${PV}"

DESCRIPTION="SASL client implementation for Common Lisp"
HOMEPAGE="http://www.cliki.net/cl-sasl"
SRC_URI="https://github.com/legoscia/${PN}/archive/${MY_P}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/ironclad"
