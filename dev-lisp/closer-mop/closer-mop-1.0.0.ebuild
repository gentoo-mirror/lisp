# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3

MY_P="closer-${PN}-4692dc1b392494dd439618e08657ecbbc8f39411"

DESCRIPTION="Closer to MOP is a Common Lisp Metaobject Protocol compatibility layer."
HOMEPAGE="http://common-lisp.net/project/closer/closer-mop.html"
SRC_URI="http://sourceforge.net/code-snapshots/git/c/cl/closer/${PN}.git/${MY_P}.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/"${MY_P}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc *.txt
}
