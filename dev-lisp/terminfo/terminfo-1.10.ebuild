# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

LINEDITPKG="linedit-0.17.5"

DESCRIPTION="Common Lisp interface to the terminfo database."
HOMEPAGE="http://users.actrix.co.nz/mycroft/cl.html
	https://github.com/nikodemus/linedit"
SRC_URI="mirror://gentoo/${LINEDITPKG}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="sys-libs/ncurses"

S="${WORKDIR}"/"${LINEDITPKG}"

src_install() {
	common-lisp-install-sources "${PN}.lisp"
	common-lisp-install-asdf "${PN}.asd"
}
