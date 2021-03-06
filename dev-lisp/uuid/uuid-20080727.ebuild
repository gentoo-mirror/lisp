# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp library for generation of UUIDs as described by RFC 4122."
HOMEPAGE="http://www.dardoria.net/software/uuid.html"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/ironclad"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml *.{html,png,jpeg}
}
