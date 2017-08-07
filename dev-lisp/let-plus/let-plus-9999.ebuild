# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="LET+: destructuring extension of LET*"
HOMEPAGE="http://www.cliki.net/let-plus"
EGIT_REPO_URI="https://github.com/tpapp/${PN}"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
		dev-lisp/anaphora
		dev-lisp/lift"
