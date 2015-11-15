# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

MY_P="v${PV}"

DESCRIPTION="CL-PPCRE is a portable regular expression library for Common Lisp."
HOMEPAGE="http://weitz.de/cl-ppcre/
		  http://www.cliki.net/cl-ppcre"
SRC_URI="https://github.com/edicl/cl-ppcre/archive/${MY_P}.tar.gz -> cl-ppcre-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="=dev-lisp/cl-ppcre-${PV}*
		dev-lisp/cl-unicode"

S="${WORKDIR}/cl-ppcre-${PV}"

src_install() {
	common-lisp-install-sources -t all ${PN}/ test/unicode*
	common-lisp-install-asdf ${PN}.asd
	dodoc CHANGELOG README.md
	dohtml doc/index.html
}
