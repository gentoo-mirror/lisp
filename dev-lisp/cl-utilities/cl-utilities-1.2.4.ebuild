# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp library of semi-standard utilities."
HOMEPAGE="http://common-lisp.net/project/cl-utilities/"
SRC_URI="http://common-lisp.net/project/cl-utilities/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc README
	dohtml doc/*
}
