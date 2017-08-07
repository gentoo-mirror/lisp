# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="CL-TYPESETTING is a complete typesetting system written in Common Lisp."
HOMEPAGE="http://www.fractalconcept.com/asp/html/cl-typesetting.html
	http://www.cliki.net/cl-typesetting"
EGIT_REPO_URI="https://github.com/mbattyani/cl-typesetting"

LICENSE="BSD-2"
SLOT="0"
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
