# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Library for percent-encoding defined in RFC 3986 and varieties."
HOMEPAGE="https://github.com/llibra/percent-encoding
	https://bitbucket.org/llibra/percent-encoding"
EGIT_REPO_URI="https://github.com/llibra/percent-encoding"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="dev-lisp/anaphora
	dev-lisp/babel"
