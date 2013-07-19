# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Stand-alone Common Lisp graph typesetting system"
HOMEPAGE="https://github.com/mbattyani/cl-typegraph"
EGIT_REPO_URI="git://github.com/mbattyani/${PN}.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-typesetting
	media-gfx/graphviz"
