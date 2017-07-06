# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV=${PV:0:4}-${PV:4:2}-${PV:6:2}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Allows reading and writing CSV files"
HOMEPAGE="http://www.cliki.net/fare-csv"
SRC_URI="http://common-lisp.net/~sionescu/files/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-csv"

S="${WORKDIR}"/${MY_P}
