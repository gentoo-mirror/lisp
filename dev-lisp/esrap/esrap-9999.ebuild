# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="ESRAP -- a packrat parser generator for Common Lisp"
HOMEPAGE="https://github.com/nikodemus/esrap
	www.cliki.net/esrap"
EGIT_REPO_URI="git://github.com/nikodemus/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
	dev-lisp/eos"
