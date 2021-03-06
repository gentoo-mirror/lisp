# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P="${PN}_${PV}"

DESCRIPTION="A highly flexible and dynamic prototype-based object system for Common Lisp."
HOMEPAGE="http://www.cliki.net/KR"
SRC_URI="mirror://gentoo/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/${MY_P}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc ${PN}-manual.ps ${PN}.changes
}
