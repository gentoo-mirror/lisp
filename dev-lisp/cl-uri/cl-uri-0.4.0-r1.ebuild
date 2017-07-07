# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A library to parse/manipulate/use uris"
HOMEPAGE="http://common-lisp.net/project/cl-uri"
SRC_URI="http://common-lisp.net/project/${PN}/dist/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

CLSYSTEMS="src/${PN}"

src_install() {
	common-lisp-install-sources src/*.lisp
	common-lisp-install-asdf
	dohtml -r docs/*
}
