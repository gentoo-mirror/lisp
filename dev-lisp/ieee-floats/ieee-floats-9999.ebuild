# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp IEEE-754 float en- and decoding"
HOMEPAGE="http://common-lisp.net/project/ieee-floats/"
EGIT_REPO_URI="https://github.com/marijnh/${PN}.git"

LICENSE="ZLIB"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/fiveam"
