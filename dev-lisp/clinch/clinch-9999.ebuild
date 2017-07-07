# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp 3D/2D Graphics Engine for OpenGL"
HOMEPAGE="https://github.com/BradWBeer/CLinch"
EGIT_REPO_URI="git://github.com/BradWBeer/CLinch.git"

LICENSE="BSD-2"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/cl-cairo2
	dev-lisp/cffi
	dev-lisp/cl-opengl
	dev-lisp/lispbuilder-sdl
	dev-lisp/sb-cga
	dev-lisp/trivial-garbage
	dev-lisp/xmls
	media-libs/freeimage"
