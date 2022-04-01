# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="arnesi is a Common Lisp utility suite used with bese projects"
HOMEPAGE="http://common-lisp.net/project/bese/arnesi.html"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

RDEPEND="!dev-lisp/cl-${PN}
		!dev-lisp/cl-${PN}-darcs
		dev-lisp/cl-ppcre"

src_install() {
	common-lisp-install-sources src t
	common-lisp-install-asdf
}
