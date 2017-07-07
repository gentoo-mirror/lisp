# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="A Common Lisp re-implementation of the APR Pools for resource management."
HOMEPAGE="http://code.google.com/p/garbage-pools/ http://www.cliki.net/garbage-pools"
SRC_URI="http://garbage-pools.googlecode.com/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/lift"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
}
