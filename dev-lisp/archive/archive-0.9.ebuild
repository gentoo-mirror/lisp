# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3

MY_P=${PN}_${PV}

DESCRIPTION="Archive is Nathan Froyd's tar/cpio package for CL."
HOMEPAGE="http://www.cliki.net/Archive"
SRC_URI="http://method-combination.net/lisp/files/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="dev-lisp/cl-fad
	dev-lisp/trivial-gray-streams"

S="${WORKDIR}"/${MY_P}

