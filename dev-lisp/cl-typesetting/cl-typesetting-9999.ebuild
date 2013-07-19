# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="CL-TYPESETTING is a complete typesetting system written in Common Lisp."
HOMEPAGE="http://www.fractalconcept.com:8000/asp/cl-typesetting"
EGIT_REPO_URI="git://github.com/mbattyani/${PN}.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-pdf"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources .
	common-lisp-install-asdf
	insinto "${CLSOURCEROOT}"/"${PN}"/hyphen-patterns && doins hyphen-patterns/*
	insinto /usr/share/doc/${PF}/contrib/xhtml-renderer && doins contrib/xhtml-renderer/*
	insinto /usr/share/doc/${PF}/examples && doins examples/*
	insinto /usr/share/doc/${PF}/files-for-example && doins files-for-example/*
	dodoc *.txt
}
