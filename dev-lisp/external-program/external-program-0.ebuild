# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="version-${PV}"

DESCRIPTION="A portable Common Lisp library for running external programs from within Lisp"
HOMEPAGE="http://common-lisp.net/project/external-program"
SRC_URI="https://github.com/sellout/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lisp/fiveam"

S="${WORKDIR}/${PN}-${MY_PV}"
