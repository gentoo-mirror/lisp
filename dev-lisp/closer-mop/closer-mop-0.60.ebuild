# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp-2

MY_P=${PN}_${PV:0:3}

DESCRIPTION="Closer to MOP is a Common Lisp Metaobject Protocol compatibility layer."
HOMEPAGE="http://common-lisp.net/project/closer/closer-mop.html"
SRC_URI="http://common-lisp.net/project/closer/ftp/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/${MY_P}

src_install() {
	common-lisp-install *.{asd,lisp} test/
	common-lisp-symlink-asdf
	dodoc *.txt
}
