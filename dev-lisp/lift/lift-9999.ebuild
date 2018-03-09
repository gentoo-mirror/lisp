# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="LIFT is yet another LIsp Framework for Testing"
HOMEPAGE="http://common-lisp.net/project/lift/"
EGIT_REPO_URI="git://github.com/gwkkwg/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources {dev,timeout,test}/*.lisp
	common-lisp-install-asdf
	for i in compare data examples resources; do
		docinto ${i} && dodoc ${i}/*
	done
	dodoc ${PN}-standard.config RELNOTES
}
