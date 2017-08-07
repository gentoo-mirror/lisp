# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="ESRAP -- a packrat parser generator for Common Lisp"
HOMEPAGE="https://github.com/nikodemus/esrap
	www.cliki.net/esrap"
EGIT_REPO_URI="https://github.com/nikodemus/esrap"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/alexandria
	dev-lisp/eos"
