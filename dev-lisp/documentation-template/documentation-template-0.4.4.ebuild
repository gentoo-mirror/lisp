# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Prepare HTML documentation for Common Lisp libraries"
HOMEPAGE="http://weitz.de/documentation-template/"
SRC_URI="https://github.com/edicl/documentation-template/archive/v${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="dev-lisp/cl-who"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	use doc && dodoc doc/index.html
}
