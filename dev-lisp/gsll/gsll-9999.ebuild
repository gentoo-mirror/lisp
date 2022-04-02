# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp interface to the GNU Scientific Library."
HOMEPAGE="https://gsll.common-lisp.dev/"
EGIT_REPO_URI="git://repo.or.cz/gsll.git"

LICENSE="GPL-3 FDL-1.2"
SLOT="0"

RDEPEND=">=sci-libs/gsl-1.9
		>=dev-lisp/cffi-0.10.5
		dev-lisp/fsbv
		dev-lisp/gsd
		dev-lisp/trivial-garbage
		dev-lisp/cl-utilities
		dev-lisp/asdf-system-connections
		dev-lisp/iterate
		dev-lisp/lisp-unit"

CLSYSTEMS="${PN} ${PN}-tests"

src_install() {
	common-lisp-install-sources *.lisp calculus/ data/ eigensystems/ \
		fast-fourier-transforms/ floating-point/ histogram/ init/ \
		interpolation/ linear-algebra/ mathematical/ \
		ordinary-differential-equations/ physical-constants/ random/ \
		solve-minimize-fit/ special-functions/ statistics/ tests/ test-unit/
	common-lisp-install-asdf
	dodoc documentation/*.text
	docinto html
	dodoc documentation/*.{html,css}
}
