# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Computer graphics algebra library for SBCL."
HOMEPAGE="http://github.com/3b/sb-cga"
EGIT_REPO_URI="git://github.com/3b/sb-cga.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

RDEPEND="dev-lisp/sbcl
		dev-lisp/alexandria"

src_prepare() {
	if use doc ; then
		sed -e 's/--css/--css-include/' -i doc/Makefile || die
	fi
}

src_compile() {
	if use doc ; then
		cd doc || die
		emake
	fi
}

src_install() {
	common-lisp-install-sources *.lisp ports
	common-lisp-install-asdf
	use doc && dodoc README && dohtml doc/sb-cga.html
}
