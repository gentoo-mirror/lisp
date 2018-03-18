# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="${PN} is a portable templating library for Common Lisp"
HOMEPAGE="http://weitz.de/html-template/
		http://www.cliki.net/html-template/"
SRC_URI="https://github.com/edicl/html-template/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_install() {
	common-lisp-3_src_install
	dodoc CHANGELOG INSTALLATION doc/*.html
}
