# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Portable threads API for Common Lisp (from GBBopen project)"
HOMEPAGE="http://www.cliki.net/Portable-Threads http://GBBopen.org"
SRC_URI="https://github.com/binghe/portable-threads/archive/quicklisp-20161031.tar.gz -> ${PF}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}/${PN}-quicklisp-20161031"
