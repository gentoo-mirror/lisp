# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A CLOS extension for Aspect-oriented Programming."
HOMEPAGE="http://common-lisp.net/project/closer/"
SRC_URI="https://github.com/pcostanza/aspectl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/lw-compat
		dev-lisp/closer-mop
		dev-lisp/contextl"
