# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Embedded Common Lisp and template system"
HOMEPAGE="http://common-lisp.net/project/cl-emb/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-ppcre"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml examples.*
	dodoc TODO README
}
