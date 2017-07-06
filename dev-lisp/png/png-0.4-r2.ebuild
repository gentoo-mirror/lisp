# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DEB_PV=2

DESCRIPTION="Common Lisp package to read and write ${PN} image files"
HOMEPAGE="http://www.pvv.ntnu.no/~musum/lisp/code/
	http://www.cliki.net/${PN}
	http://packages.debian.org/unstable/devel/cl-${PN}.html"
SRC_URI="mirror://debian/pool/main/c/cl-${PN}/cl-${PN}_${PV}.orig.tar.gz
		mirror://debian/pool/main/c/cl-${PN}/cl-${PN}_${PV}-${DEB_PV}.diff.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/uffi"

S="${WORKDIR}/cl-${P}"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply cl-${PN}_${PV}-${DEB_PV}.diff
	eapply "${FILESDIR}"/libz-path-gentoo.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources *.cl
	common-lisp-install-asdf
	dodoc AUTHORS BUGS NEWS README
	dohtml doc/index.html
}
