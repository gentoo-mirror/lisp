# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Parenscript is a small lispy language that can be compiled to JavaScript."
HOMEPAGE="http://common-lisp.net/project/parenscript/"
EGIT_REPO_URI="https://github.com/vsedach/Parenscript"

LICENSE="BSD"
SLOT="0"
IUSE="doc"

DEPEND=""
RDEPEND="!dev-lisp/cl-${PN}
		!dev-lisp/cl-${PN}-darcs
		!dev-lisp/${PN}-darcs
		dev-lisp/anaphora
		dev-lisp/cl-ppcre
		dev-lisp/fiveam
		dev-lisp/named-readtables"

CLSYSTEMS="parenscript parenscript.test"

src_install() {
	common-lisp-install-sources -t all src runtime extras t
	common-lisp-install-asdf
	dodoc contributors README
	if use doc ; then
		dodoc docs/introduction.lisp
		dodoc -r docs
	fi
}
