# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3

DESCRIPTION="FTP Client Functionality for Common Lisp"
HOMEPAGE="http://code.kepibu.org/cl-ftp/
		http://www.cliki.net/CL-FTP"
SRC_URI="http://code.kepibu.org/cl-ftp/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/lml
	dev-lisp/split-sequence
	dev-lisp/usocket"

S="${WORKDIR}/${PN}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc api.lml
}
