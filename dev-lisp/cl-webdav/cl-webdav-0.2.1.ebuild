# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

MY_P="v${PV}"

DESCRIPTION="A WebDAV server written in Common Lisp."
HOMEPAGE="http://weitz.de/cl-webdav"
SRC_URI="https://github.com/edicl/cl-webdav/archive/${MY_P}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

RDEPEND="dev-lisp/cl-fad
		dev-lisp/cxml
		>=dev-lisp/hunchentoot-1.0.0"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	use doc && dohtml doc/{index.html,dav.png}
}
