# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Common Lisp interface to the terminfo database."
HOMEPAGE="http://users.actrix.co.nz/mycroft/cl.html"
EGIT_REPO_URI="https://gitlab.common-lisp.net/linedit/linedit.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		sys-libs/ncurses"

src_install() {
	common-lisp-install-sources "${PN}.lisp"
	common-lisp-install-asdf "${PN}.asd"
}
