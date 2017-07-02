# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp implementation of Bse64 Encoding/Decoding."
HOMEPAGE="http://homepage.mac.com/svc/s-base64/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_unpack() {
	unpack ${A}
	rm "${S}"/Makefile || die
}

src_install() {
	common-lisp-install-sources src test
	common-lisp-install-asdf
	dohtml doc/*.html
	dodoc README.txt
}
