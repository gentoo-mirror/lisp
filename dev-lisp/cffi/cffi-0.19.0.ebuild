# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="The Common Foreign Function Interface (CFFI)"
HOMEPAGE="http://common-lisp.net/project/cffi/"
SRC_URI="https://github.com/cffi/cffi/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

DEPEND="doc? ( dev-lisp/sbcl virtual/texi2dvi )"
RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/alexandria
		dev-lisp/babel
		dev-lisp/trivial-features"

CLSYSTEMS="cffi.asd cffi-tests.asd cffi-examples.asd cffi-grovel.asd \
		cffi-uffi-compat.asd cffi-toolchain cffi-libffi"

install_docs() {
	doinfo doc/*.info
	insinto /usr/share/doc/${PF}/html
	doins -r doc/{spec,manual}
}

src_compile() {
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			make -C doc manual spec || die "Cannot build docs"
	fi
}

src_install() {
	common-lisp-install-sources examples/ src/ uffi-compat/
	common-lisp-install-sources -t all grovel/ tests/ toolchain/ libffi/
	common-lisp-install-asdf
	dodoc README.md TODO doc/*.txt
	use doc && install_docs
}
