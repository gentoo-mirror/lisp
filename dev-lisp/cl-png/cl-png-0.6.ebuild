# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="REL_${PV//./_}"

DESCRIPTION="CL-PNG is a Common Lisp library for reading and writing PNG files"
HOMEPAGE="https://www.ljosa.com/~ljosa/software/cl-png/"
SRC_URI="https://github.com/ljosa/cl-png/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="media-libs/libpng:0
	dev-lisp/cffi"

S="${WORKDIR}/${PN}-${MY_PV}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf png.asd png-test.asd
	dodoc -r AUTHORS NEWS README doc PngSuite
}
