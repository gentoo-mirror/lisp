# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="TrueType font file access library for Common Lisp."
HOMEPAGE="http://www.xach.com/lisp/zpb-ttf"
SRC_URI="https://github.com/xach/${PN}/archive/release-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}/${PN}-release-${PV}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc doc/*.{html,png}
}
