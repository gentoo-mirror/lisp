# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Stand-alone Common Lisp graph typesetting system"
HOMEPAGE="https://github.com/mbattyani/cl-typegraph"
EGIT_REPO_URI="https://github.com/mbattyani/${PN}"

LICENSE="BSD-2"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/cl-typesetting
	media-gfx/graphviz"
