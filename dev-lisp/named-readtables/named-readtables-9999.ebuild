# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A Common Lisp library that provides a namespace for readtables."
HOMEPAGE="http://common-lisp.net/project/editor-hints/"
EGIT_REPO_URI="https://github.com/melisgl/${PN}"

LICENSE="BSD"
SLOT="0"
IUSE="doc"

src_install() {
	common-lisp-install-sources src test
	common-lisp-install-asdf
	use doc && dodoc doc/${PN}.html
}
