# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Makes it easy to specify implementation (or feature) dependent files as part of an ASDF system"
HOMEPAGE="https://github.com/nikodemus/madeira-port"
EGIT_REPO_URI="git://github.com/nikodemus/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lisp/eos"
RDEPEND="${DEPEND}"
