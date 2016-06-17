# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="A collection of public domain utilities."
HOMEPAGE="http://common-lisp.net/project/alexandria/"
EGIT_REPO_URI="https://gitlab.common-lisp.net/alexandria/alexandria.git"

LICENSE="MIT"
SLOT="0"
IUSE="doc"

DEPEND="doc? ( sys-apps/texinfo )"
RDEPEND=""

builddoc() {
	if use doc ; then
		cd doc || die
		emake
	fi
}

src_compile() {
	use doc && builddoc
}

src_install() {
	common-lisp-install-sources -t all *.lisp LICENCE
	common-lisp-install-asdf
	dodoc README AUTHORS
	use doc && doinfo doc/${PN}.info && dohtml doc/${PN}.html && dodoc doc/${PN}.pdf
}
