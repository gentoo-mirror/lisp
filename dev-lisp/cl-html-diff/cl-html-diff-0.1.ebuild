# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Common Lisp library for generating a human-readable diff of two HTML documents."
HOMEPAGE="http://www.cliki.net/CL-HTML-DIFF"
SRC_URI="http://lemonodor.com/code/${PN}_${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-difflib"

S="${WORKDIR}"/${PN}_${PV}
