# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Colorize is a Common Lisp application for colorizing source code."
HOMEPAGE="http://www.cliki.net/colorize"
EGIT_REPO_URI="git://github.com/redline6561/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/html-encode
		dev-lisp/split-sequence
		~dev-lisp/hyperspec-7.0"
