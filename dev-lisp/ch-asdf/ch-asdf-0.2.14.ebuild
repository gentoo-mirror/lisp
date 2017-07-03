# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P=${PN}_${PV}

DESCRIPTION="ASDF Extensions from Cyrus Harmon."
HOMEPAGE="http://www.cyrusharmon.org/projects?project=ch-asdf"
SRC_URI="http://cyrusharmon.org/static/releases/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/ch-util
		dev-lisp/puri"

S="${WORKDIR}"/${MY_P}

src_install() {
	common-lisp-install-sources *.lisp version.lisp-expr
	common-lisp-install-asdf
}
