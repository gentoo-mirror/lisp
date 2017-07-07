# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="Version-${PV}"

DESCRIPTION="A Common Lisp library for unit testing."
HOMEPAGE="http://www.cliki.net/lisp-unit/"
SRC_URI="https://github.com/OdonataResearchLLC/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}/${PN}-${MY_PV}"
