# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Weblocks is a continuations-based web framework written in Common Lisp."
HOMEPAGE="http://weblocks-framework.info/"
EGIT_REPO_URI="https://github.com/weblocks-framework/weblocks"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-lisp/closer-mop
		dev-lisp/metatilities
		dev-lisp/hunchentoot
		dev-lisp/cl-who
		dev-lisp/cl-ppcre
		dev-lisp/cl-json
		dev-lisp/puri
		dev-lisp/md5
		dev-lisp/fare-matcher
		dev-lisp/cl-cont
		dev-lisp/parenscript
		dev-lisp/anaphora
		dev-lisp/f-underscore
		dev-lisp/bordeaux-threads
		dev-lisp/cl-fad
		dev-lisp/clsql
		dev-lisp/elephant
		dev-lisp/cl-prevalence
		dev-lisp/trivial-timeout
		dev-lisp/salza2
		dev-lisp/rt
		dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test ${PN}-scripts ${PN}-util"

S="${WORKDIR}"/${P}

src_install() {
	dodir "${CLSOURCEROOT}"/${PN}/scripts
	cp -a scripts/weblocks-core "${D}/${CLSOURCEROOT}"/${PN}/scripts || die
	rm -rf scripts/weblocks-core
	common-lisp-install-sources scripts src test
	common-lisp-install-asdf
	dodoc -r docs/*
}
