# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="X11 XKeyboard extension for common lisp x client (clx)"
HOMEPAGE="https://github.com/filonenko-mikhail/clx-xkeyboard"
EGIT_REPO_URI="https://github.com/filonenko-mikhail/clx-${PN}.git"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/clx"
