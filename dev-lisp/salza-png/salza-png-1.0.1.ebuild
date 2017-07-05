# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Salza-png is a graphics library that writes PNG files using Salza."
HOMEPAGE="http://www.cliki.net/Salza-PNG"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/salza"
