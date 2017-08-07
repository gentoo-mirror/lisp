# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Provides auto-loading of systems that only make sense when others are loaded."
HOMEPAGE="http://common-lisp.net/project/cl-containers/asdf-system-connections/"
EGIT_REPO_URI="https://github.com/gwkkwg/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
