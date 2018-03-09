# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="BIND combines LET*, DESTRUCTURING-BIND and MULTIPLE-VALUE-BIND into a single form."
HOMEPAGE="http://common-lisp.net/project/metabang-bind
	http://www.cliki.net/bind"
EGIT_REPO_URI="git://github.com/gwkkwg/${PN}"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-bind
		dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources {unit-tests,dev}/*.lisp
	common-lisp-install-asdf
	dodoc *.config
}
