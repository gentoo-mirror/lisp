# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Common Lisp library for parsing its own syntax of configuration file"
HOMEPAGE="http://www.cliki.net/trivial-configuration-parser"
SRC_URI="http://www.unmutual.info/software/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc README demo.conf
}
