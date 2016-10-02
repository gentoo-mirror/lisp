# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

DESCRIPTION="Prepare HTML documentation for Common Lisp libraries"
HOMEPAGE="http://weitz.de/documentation-template/"
SRC_URI="http://dev.gentoo.org/~nimiux/dev-lisp/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="dev-lisp/cl-who"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	use doc && dohtml doc/index.html
}
