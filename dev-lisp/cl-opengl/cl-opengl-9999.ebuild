# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="A set of CFFI bindings to the OpenGL, GLU and GLUT APIs."
HOMEPAGE="http://common-lisp.net/project/cl-opengl/"
EGIT_REPO_URI="git://github.com/3b/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cffi
		 media-libs/freeglut"

CLSYSTEMS="cl-opengl cl-glu cl-glut cl-glut-examples"

src_install() {
	common-lisp-install-sources gl glu glut examples
	common-lisp-install-asdf
	dodoc README
}
