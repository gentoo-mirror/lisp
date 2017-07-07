# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="VERSION_${PV}"

DESCRIPTION="FTP Client Functionality for Common Lisp"
HOMEPAGE="http://code.kepibu.org/cl-ftp/
		http://www.cliki.net/CL-FTP"
SRC_URI="https://github.com/pinterface/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/split-sequence
	dev-lisp/usocket"

S="${WORKDIR}/${PN}-${MY_PV}"
