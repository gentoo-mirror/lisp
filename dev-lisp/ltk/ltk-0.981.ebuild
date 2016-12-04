# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit common-lisp-3

DESCRIPTION="LTK is a Common Lisp binding for the Tk graphics toolkit"
HOMEPAGE="http://www.peter-herth.de/ltk/"
SRC_URI="http://www.peter-herth.de/ltk/${P}.tgz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lang/tk"

S="${WORKDIR}/${PN}"

CLSYSTEMS="ltk ltk-mw ltk-remote"

src_install() {
	common-lisp-install-sources -t all *.lisp remote*.tcl
	common-lisp-install-asdf
}
