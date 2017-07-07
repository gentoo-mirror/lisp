# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P=${PN}_${PV}

DESCRIPTION="Virtual hosting with Hunchentoot."
HOMEPAGE="http://www.cyrusharmon.org/projects?project=hunchentoot-vhost"
SRC_URI="http://cyrusharmon.org/static/releases/${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/hunchentoot-1.0.0"

S="${WORKDIR}"/${MY_P}

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/fix-asd.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp version.lisp-expr
	common-lisp-install-asdf
	dodoc NEWS README
}
