# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Lisp interface to mongo db"
HOMEPAGE="https://github.com/fons/cl-mongo"
EGIT_REPO_URI="https://github.com/fons/cl-mongo"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-db/mongodb
	dev-lisp/bordeaux-threads
	dev-lisp/documentation-template
	dev-lisp/lisp-unit
	dev-lisp/parenscript
	dev-lisp/split-sequence
	dev-lisp/usocket
	dev-lisp/uuid
	dev-lisp/babel"
