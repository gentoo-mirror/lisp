# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

MY_PV="v${PV}"

DESCRIPTION="FiveAM is a simple regression testing framework designed for Common Lisp."
HOMEPAGE="http://common-lisp.net/project/fiveam/"
SRC_URI="https://github.com/cl-fiveam/fiveam/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~sparc ~ppc"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		!dev-lisp/cl-${PN}-darcs
		dev-lisp/alexandria"

src_install() {
	common-lisp-install-sources -t all docs src t version.lisp-expr
	common-lisp-install-asdf
	dodoc README
}
