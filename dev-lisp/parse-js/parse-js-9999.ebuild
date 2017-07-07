# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="parse-js is a Common Lisp package for parsing JavaScript"
HOMEPAGE="http://marijnhaverbeke.nl/parse-js/"
EGIT_REPO_URI="http://marijnhaverbeke.nl//git/${PN}"

LICENSE="ZLIB"
SLOT="0"
IUSE="doc"

DEPEND=""
RDEPEND=""

src_install() {
	common-lisp-install-sources src
	common-lisp-install-asdf
	use doc && dodoc index.html
}
