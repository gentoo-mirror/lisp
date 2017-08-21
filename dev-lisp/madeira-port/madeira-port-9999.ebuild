# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Makes easy to specify implementation dependent files as part of an ASDF system"
HOMEPAGE="https://github.com/nikodemus/madeira-port"
EGIT_REPO_URI="https://github.com/nikodemus/${PN}"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-lisp/eos"
RDEPEND="${DEPEND}"
