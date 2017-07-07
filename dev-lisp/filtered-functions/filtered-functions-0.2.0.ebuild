# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A CLOS extension for filtered dispatch. Requires Closer to MOP."
HOMEPAGE="http://common-lisp.net/project/closer/filtered.html"
SRC_URI="https://github.com/pcostanza/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/closer-mop"
