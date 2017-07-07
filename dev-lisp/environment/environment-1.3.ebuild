# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Provides an CLOS (CL Object System) encapsulation of the current CL implementation environment"
HOMEPAGE="http://packages.debian.org/unstable/devel/cl-environment"
SRC_URI="mirror://debian/pool/main/c/cl-${PN}/cl-${PN}_${PV}.orig.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/cl-${PN}-${PV}.orig

# FIXME: does not work with current SBCLs

src_unpack() {
	unpack ${A}
}

src_prepare() {
	cp "${FILESDIR}"/${PN}.asd "${S}" || die
}

src_install() {
	common-lisp-install-sources *.lisp impl-dependent
	common-lisp-install-asdf
	dodoc README
}
