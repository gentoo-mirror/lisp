# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp-3

MY_PV="${PN}_${PV}"

DESCRIPTION="Common Lisp interface to the terminfo database."
HOMEPAGE="http://users.actrix.co.nz/mycroft/cl.html"
SRC_URI="mirror://gentoo/"${MY_PV}".tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		sys-libs/ncurses"

S="${WORKDIR}"/"${MY_PV}"
