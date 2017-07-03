# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P="${PN}-version-${PV}"

DESCRIPTION="Araneida is small, highly-portable web server for Common Lisp"
HOMEPAGE="http://www.cliki.net/Araneida"
SRC_URI="http://common-lisp.net/project/${PN}/release/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/split-sequence
		dev-lisp/net-telent-date"

S="${WORKDIR}/${MY_P}"

src_install() {
	common-lisp-install-sources *.lisp} NEWS
	common-lisp-install-sources utility obsolete ${PN}-repl compat
	common-lisp-install-asdf

	dohtml doc/*.{html,css,lisp} doc/PLAN
	dosym /usr/share/doc/${PF}/html "${CLSOURCEROOT}"/${PN}/doc

	dodoc doc/*.txt RELEASE_NOTES NEWS Notes README TODO
	dodoc "${FILESDIR}"/README.Gentoo
}
