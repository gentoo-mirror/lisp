# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Pure Common Lisp TrueType font renderer for CLX"
HOMEPAGE="https://github.com/filonenko-mikhail/clx-truetype"
EGIT_REPO_URI="https://github.com/filonenko-mikhail/${PN}.git"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/clx
	dev-lisp/zpb-ttf
	dev-lisp/cl-vectors
	dev-lisp/cl-fad
	dev-lisp/cl-store
	dev-lisp/trivial-features"
