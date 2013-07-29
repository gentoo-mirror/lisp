# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp-3

DESCRIPTION="Common Lisp library for parsing any number string"
HOMEPAGE="http://www.cliki.net/parse-number"
SRC_URI="http://github.com/downloads/sharplispers/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

src_install() {
	common-lisp-install-sources -t all *.lisp version.lisp-expr
	common-lisp-install-asdf
}
