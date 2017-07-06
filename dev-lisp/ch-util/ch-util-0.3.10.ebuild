# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P=${PN}_${PV}

DESCRIPTION="Cyrus Harmon's Common Lisp utility library."
HOMEPAGE="http://www.cyrusharmon.org/projects?project=ch-util"
SRC_URI="http://cyrusharmon.org/static/releases/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

CLSYSTEMS="ch-util ch-util-test"

S="${WORKDIR}"/${MY_P}

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-fix-asd.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp test/ version.lisp-expr
	common-lisp-install-asdf
	dodoc README
}
