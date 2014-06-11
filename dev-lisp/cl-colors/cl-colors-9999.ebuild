# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 eutils git-2

DESCRIPTION="A simple package for different color representations in Common Lisp."
HOMEPAGE="http://cliki.net/cl-colors"
EGIT_REPO_URI="git://github.com/tpapp/${PN}.git"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
	dev-lisp/let-plus"

src_install() {
	common-lisp-install-sources
	common-lisp-install-asdf
	dodoc introduction.txt README.org
}
