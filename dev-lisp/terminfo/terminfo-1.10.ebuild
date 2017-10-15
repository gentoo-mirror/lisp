# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

LINEDITVERSION="0.17.5"

DESCRIPTION="Common Lisp interface to the terminfo database."
HOMEPAGE="http://users.actrix.co.nz/mycroft/cl.html"
SRC_URI="https://dev.gentoo.org/~nimiux/${CATEGORY}/linedit/linedit-${LINEDITVERSION}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="sys-libs/ncurses"

S="${WORKDIR}"/linedit-"${LINEDITVERSION}"

src_install() {
	common-lisp-install-sources "${PN}.lisp"
	common-lisp-install-asdf "${PN}.asd"
}
