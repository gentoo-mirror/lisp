# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="version-${PV}"

DESCRIPTION="Wiki parser framework"
HOMEPAGE="http://github.com/archimag/wiki-parser"
SRC_URI="https://github.com/archimag/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
		dev-lisp/iterate
		dev-lisp/cl-ppcre"

S="${WORKDIR}/${PN}-${MY_PV}"
