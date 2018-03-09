# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Common Lisp re-implementation of GNU M4"
HOMEPAGE="http://www.cliki.net/cl-m4"

EGIT_REPO_URI="git://github.com/e-user/${PN}"

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
