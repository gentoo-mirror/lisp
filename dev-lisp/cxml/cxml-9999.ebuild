# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="An XML parser written in Common Lisp"
HOMEPAGE="http://common-lisp.net/project/cxml/"
EGIT_REPO_URI="git://repo.or.cz/${PN}.git"

LICENSE="LLGPL-2.1"
SLOT="0"
IUSE="doc"

RDEPEND="!dev-lisp/cl-${PN}
		>=dev-lisp/closure-common-${PV}
		dev-lisp/puri
		dev-lisp/trivial-gray-streams"

src_install() {
	common-lisp-install-sources -t all *.dtd
	common-lisp-install-sources {contrib,dom,klacks,test,xml,xml/sax-tests}/*.lisp
	common-lisp-install-asdf
	use doc && dodoc README OLDNEWS TIMES && (cd doc && make) && dodoc doc/*.{html,css,png}
}
