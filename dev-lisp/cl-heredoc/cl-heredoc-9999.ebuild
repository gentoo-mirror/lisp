# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Common Lisp reader heredoc dispatcher"
HOMEPAGE="http://www.cliki.net/cl-heredoc"
EGIT_REPO_URI="git://github.com/e-user/${PN}.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CLSYSTEMS="${PN} ${PN}-test"
