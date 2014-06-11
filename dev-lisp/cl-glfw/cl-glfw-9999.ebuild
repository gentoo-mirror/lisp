# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Set of CFFI bindings for the GLFW OpenGL helper library"
HOMEPAGE="http://www.cliki.net/cl-glfw"
EGIT_REPO_URI="git://repo.or.cz/${PN}.git"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples"

RDEPEND="media-libs/glfw"

src_install() {
	common-lisp-install-sources lib
	common-lisp-install-asdf
	use doc && dodoc README && dohtml index.html
	use examples && doins -r examples
}
