# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Simplified interface to the powerful CL-VECTORS vector rasterization library."
HOMEPAGE="http://www.xach.com/lisp/vecto/"
SRC_URI="mirror://gentoo/${P}.tgz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-vectors
		dev-lisp/zpb-ttf
		dev-lisp/zpng"

src_install() {
	common-lisp-3_src_install
	dodoc doc/index.html
	docinto html && dodoc doc/*.{lisp,png}
}
