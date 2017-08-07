# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="CL-PDF is a cross-platform Common Lisp library for generating PDF files"
HOMEPAGE="http://www.fractalconcept.com/asp/cl-pdf"
EGIT_REPO_URI="https://github.com/mbattyani/cl-pdf"

LICENSE="BSD-2"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/salza2
		dev-lisp/iterate"

CLSYSTEMS="${PN} ${PN}-parser"

src_install() {
	common-lisp-install-sources *.lisp contrib
	common-lisp-install-asdf
	insinto "${CLSOURCEROOT}"/"${PN}"/afm && doins afm/*.afm
	dodoc *.txt
	docinto examples && dodoc examples/*
}
