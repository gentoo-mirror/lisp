# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="LET+: destructuring extension of LET*"
HOMEPAGE="http://www.cliki.net/let-plus"
EGIT_REPO_URI="git://github.com/tpapp/${PN}"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
		dev-lisp/anaphora
		dev-lisp/lift"
