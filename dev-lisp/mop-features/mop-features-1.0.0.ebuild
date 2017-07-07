# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Provides a way to check what features a Common Lisp implementation supports."
HOMEPAGE="http://common-lisp.net/project/closer/features.html"
SRC_URI="https://github.com/pcostanza/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/lw-compat"

CLSYSTEMS="mop-feature-tests"
