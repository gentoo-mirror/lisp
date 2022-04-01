# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

MY_P=${PN}_${PV}

DESCRIPTION="The Common Foreign Function Interface (CFFI)"
HOMEPAGE="https://cffi.common-lisp.dev/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}/"

LICENSE="MIT"
SLOT="0"
IUSE="doc"

DEPEND="doc? ( dev-lisp/sbcl virtual/texi2dvi )"
RDEPEND="dev-lisp/alexandria
		dev-lisp/babel
		dev-lisp/trivial-features"

CLSYSTEMS="cffi.asd cffi-tests.asd cffi-examples.asd cffi-grovel.asd \
		cffi-uffi-compat.asd cffi-toolchain.asd"

S="${WORKDIR}"/${MY_P}

src_compile() {
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			make -C doc manual spec || die "Cannot build docs"
	fi
}

src_install() {
	common-lisp-install-sources examples/ src/ uffi-compat/ toolchain/
	common-lisp-install-sources -t all grovel/ tests/
	common-lisp-install-asdf
	dodoc README.md TODO doc/*.txt
	if use doc; then
		doinfo doc/*.info
		rm doc/{spec,manual}/cffi* || die
		docinto html
		dodoc -r doc/{spec,manual}
	fi
}
