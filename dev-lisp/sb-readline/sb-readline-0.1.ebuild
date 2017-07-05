# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="Implementation of GNU Readline support for SBCL"
HOMEPAGE="http://www.cliki.net/sb-readline"
SRC_URI="http://www.caddr.com/lisp/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/sbcl
		sys-libs/readline"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-load-foreign-library-gentoo.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources sb-readline.lisp
	common-lisp-install-asdf
	dohtml README.html
}
