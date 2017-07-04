# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Lisp parser and generator for the JSON data-interchange format"
HOMEPAGE="http://common-lisp.net/project/cl-json/
		http://www.cliki.net/cl-json"
SRC_URI="http://github.com/hankhero/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/fiveam"

src_install() {
	common-lisp-install-sources src t
	common-lisp-install-asdf
	dodoc CONTRIBUTORS README.md TODO
	dohtml doc/*
}
