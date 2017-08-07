# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="An Ajax Common Lisp Library using parenscript and hunchentoot"
HOMEPAGE="https://github.com/aarvid/SmackJack"
EGIT_REPO_URI="https://github.com/aarvid/SmackJack"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="dev-lisp/alexandria
	dev-lisp/hunchentoot
	dev-lisp/cl-json
	dev-lisp/parenscript
	dev-lisp/cl-containers"
