# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="LML2 is a package to generate HTML and XHTML from Common Lisp programs."
HOMEPAGE="http://lml2.kpe.io/"
SRC_URI="http://files.kpe.io/${PN}/${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/kmrcl"

CLSYSTEMS="${PN} ${PN}-tests"

src_install() {
	common-lisp-install-sources -t lisp .
	common-lisp-install-asdf
	dodoc -r doc
}
