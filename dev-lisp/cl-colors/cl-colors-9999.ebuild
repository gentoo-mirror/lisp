# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Simple color library for Common Lisp"
HOMEPAGE="http://cliki.net/cl-colors"
EGIT_REPO_URI="git://github.com/tpapp/${PN}.git"

LICENSE="Boost-1.0"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/alexandria
	dev-lisp/let-plus"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc introduction.txt README.org
}
