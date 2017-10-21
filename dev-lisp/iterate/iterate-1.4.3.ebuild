# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="ITERATE is a lispy and extensible replacement for the Common Lisp LOOP macro"
HOMEPAGE="http://common-lisp.net/project/iterate/"
SRC_URI="http://common-lisp.net/project/${PN}/releases/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm -f "${S}"/Makefile
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc doc/*.pdf
}
