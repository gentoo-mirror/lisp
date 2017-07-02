# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="A compatibility layer that helps make different system definitions play nicely using the same rules."
HOMEPAGE="http://common-lisp.net/project/cl-containers/defsystem-compatibility"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/metatilities-base-0.6.0
		dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources dev unit-tests
	common-lisp-install-asdf
}
