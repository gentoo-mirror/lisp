# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Helper library for Closure and Closure XML implementing runes."
HOMEPAGE="http://www.cliki.net/closure-common"
EGIT_REPO_URI="git://repo.or.cz/${PN}.git"

LICENSE="LLGPL-2.1"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/trivial-gray-streams"
