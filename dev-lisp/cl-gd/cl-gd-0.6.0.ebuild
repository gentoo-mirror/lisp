# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 toolchain-funcs

MY_P="v${PV}"

DESCRIPTION="CL-GD is a library for Common Lisp which interfaces to the GD Graphics Library"
HOMEPAGE="https://edicl.github.io/cl-gd/"
SRC_URI="https://github.com/edicl/${PN}/archive/${MY_P}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

DEPEND=">=media-libs/gd-2.0.28[jpeg,png,xpm]"
RDEPEND="${DEPEND}
		>=dev-lisp/uffi-1.3.4
		dev-lisp/cffi"

CLSYSTEMS="${PN} ${PN}-test"

src_prepare() {
	# Cleanup uneeded file
	rm "${S}"/test/.gitignore || die
}

src_compile() {
	# I have no idea why it doesn't work with as-needed
	echo $(tc-getCC) ${CFLAGS} ${LDFLAGS} -Wl,--no-as-needed -shared -fPIC -lgd ${PN}-glue.c -o ${PN}-glue.so
	$(tc-getCC) ${CFLAGS} ${LDFLAGS} -Wl,--no-as-needed -shared -fPIC -lgd ${PN}-glue.c -o ${PN}-glue.so
}

src_install() {
	dolib.so ${PN}-glue.so

	common-lisp-install-sources -t all *.lisp test
	common-lisp-install-asdf

	dodoc CHANGELOG README
	dohtml doc/*
}
