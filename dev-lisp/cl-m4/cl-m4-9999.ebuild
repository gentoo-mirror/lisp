# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp re-implementation of GNU M4"
HOMEPAGE="http://www.cliki.net/cl-m4"
EGIT_REPO_URI="https://github.com/e-user/${PN}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
		dev-lisp/cffi
		dev-lisp/cl-fad
		dev-lisp/cl-ppcre
		dev-lisp/external-program
		dev-lisp/graylex"

CLSYSTEMS="${PN} ${PN}-test"
