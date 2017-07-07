# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_PV="version-${PV}"

DESCRIPTION="Graph manipulation utilities for Common Lisp."
HOMEPAGE="http://common-lisp.net/project/cl-graph"
SRC_URI="https://github.com/gwkkwg/${PN}/archive/${MY_PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

RDEPEND="dev-lisp/asdf-system-connections
		>=dev-lisp/metatilities-base-0.6.0
		>=dev-lisp/moptilities-0.3.10
		>=dev-lisp/metatilities-0.6.15
		>=dev-lisp/cl-containers-0.11.0
		dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test"

S="${WORKDIR}/${PN}-${MY_PV}"

src_prepare() {
	eapply "${FILESDIR}"/${P}-fix-deps.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources dev/{*.lisp,graphviz} unit-tests
	common-lisp-install-asdf
	use doc && dodoc -r website
	docinto examples && dodoc dev/examples/*
}
