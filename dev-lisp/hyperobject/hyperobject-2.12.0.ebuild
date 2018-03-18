# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Hyperobject is a Common Lisp library for representing objects."
HOMEPAGE="http://hyperobject.kpe.io/
		http://www.cliki.net/hyperobject"
SRC_URI="http://files.kpe.io/hyperobject/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/kmrcl
		dev-lisp/rt
		dev-lisp/clsql"

src_prepare() {
	rm Makefile || die
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp examples
	common-lisp-install-asdf
	dodoc README
	use doc && dodoc -r doc 
}
