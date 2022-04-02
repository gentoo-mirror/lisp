# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Grid Structured Data library."
HOMEPAGE="https://gsll.common-lisp.dev/"
EGIT_REPO_URI="git://repo.or.cz/gsd.git"

LICENSE="GPL-3"
SLOT="0"
IUSE="doc"

RDEPEND=">=dev-lisp/cffi-0.10.5
		dev-lisp/trivial-garbage
		dev-lisp/fsbv
		dev-lisp/asdf-system-connections
		dev-lisp/iterate
		dev-lisp/alexandria
		dev-lisp/lisp-unit"

CLSYSTEMS="c-array/c-array grid/grid grid/grid-tests"

src_install() {
	common-lisp-install-sources c-array grid
	common-lisp-install-asdf
	use doc && dohtml -r documentation/grid
}
