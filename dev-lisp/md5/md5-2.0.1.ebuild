# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_P=${PN}_${PV}

DESCRIPTION="A fast implementation of MD5 message-digests"
HOMEPAGE="http://pmsf.eu/resources/lisp/MD5.html
		http://www.cliki.net/MD5"
SRC_URI="http://pmsf.eu/pub/download/${P}.zip"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
	dev-lisp/flexi-streams"
