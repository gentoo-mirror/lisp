# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Parenscript is a small lispy language that can be compiled to JavaScript."
HOMEPAGE="http://common-lisp.net/project/parenscript/"
EGIT_REPO_URI="git://github.com/vsedach/Parenscript"

LICENSE="BSD"
SLOT="0"
IUSE="doc"

DEPEND=""
RDEPEND=""

src_install() {
	common-lisp-install-sources -t all src runtime extras t
	common-lisp-install-asdf
	dodoc contributors README
	use doc && dohtml docs/reference.html
}
