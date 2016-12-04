# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-2

MY_P=${PN}_${PV}

DESCRIPTION="A CLOS extension for filtered dispatch. Requires Closer to MOP."
HOMEPAGE="http://common-lisp.net/project/closer/filtered.html"
SRC_URI="http://common-lisp.net/project/closer/ftp/${MY_P}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/closer-mop"

S="${WORKDIR}"/${MY_P}
