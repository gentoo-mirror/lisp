# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp reader heredoc dispatcher"
HOMEPAGE="http://www.cliki.net/cl-heredoc"
EGIT_REPO_URI="https://github.com/e-user/${PN}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CLSYSTEMS="${PN} ${PN}-test"
