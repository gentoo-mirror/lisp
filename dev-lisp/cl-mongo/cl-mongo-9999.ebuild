# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Lisp interface to mongo db"
HOMEPAGE="https://github.com/fons/cl-mongo"
EGIT_REPO_URI="git://github.com/fons/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lisp/bordeaux-threads
	dev-lisp/documentation-template
	dev-lisp/lisp-unit
	dev-lisp/parenscript
	dev-lisp/split-sequence
	dev-lisp/usocket
	dev-lisp/uuid
	dev-lisp/babel"
