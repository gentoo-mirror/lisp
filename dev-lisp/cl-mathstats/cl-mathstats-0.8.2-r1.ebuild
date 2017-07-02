# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="Common Lisp math and statistics routines."
HOMEPAGE="http://common-lisp.net/project/cl-mathstats"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/metatilities-base
		dev-lisp/cl-containers
		dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-fix-asd.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources dev/*.lisp unit-tests
	common-lisp-install-asdf
}
