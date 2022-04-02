# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_P="v${PV}"

DESCRIPTION="A WebDAV server written in Common Lisp"
HOMEPAGE="https://edicl.github.io/cl-webdav/"
SRC_URI="https://github.com/edicl/cl-webdav/archive/${MY_P}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc"

RDEPEND="dev-lisp/cl-fad
		dev-lisp/cxml
		>=dev-lisp/hunchentoot-1.0.0"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	if use doc; then
		docinto html
		dodoc doc/{index.html,dav.png}
	fi
}
