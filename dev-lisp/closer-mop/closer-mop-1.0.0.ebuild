# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Closer to MOP is a Common Lisp Metaobject Protocol compatibility layer."
HOMEPAGE="http://common-lisp.net/project/closer/closer-mop.html"
SRC_URI="https://github.com/pcostanza/${PN}/archive/v${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc *.txt
}
