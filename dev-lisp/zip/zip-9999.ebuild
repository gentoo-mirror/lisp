# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A library for .zip-file reading and writing, written in Common Lisp."
HOMEPAGE="http://common-lisp.net/project/zip/"
EGIT_REPO_URI="https://github.com/bluelisp/${PN}"

LICENSE="LLGPL-2.1"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/babel
		dev-lisp/cl-fad
		dev-lisp/salza2
		dev-lisp/trivial-gray-streams"
