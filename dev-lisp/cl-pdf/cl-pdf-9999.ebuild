# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="CL-PDF is a cross-platform Common Lisp library for generating PDF files"
HOMEPAGE="http://www.fractalconcept.com/asp/cl-pdf"
EGIT_REPO_URI="git://github.com/mbattyani/cl-pdf.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~ppc ~x86"
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
