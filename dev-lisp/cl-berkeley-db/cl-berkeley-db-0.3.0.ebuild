# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A common-lisp wrapper to the Berkeley database library."
HOMEPAGE="http://common-lisp.net/project/cl-berkeley-db/"
SRC_URI="http://common-lisp.net/project/${PN}/dist/${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
SLOT="0"
IUSE=""

RDEPEND="sys-libs/db:4.6
		dev-lisp/cffi
		dev-lisp/trivial-garbage"

CLSYSTEMS="src/${PN}"

src_install() {
	common-lisp-install-sources src/*.lisp
	common-lisp-install-asdf
	dodoc docs/AUTHORS
	dohtml docs/{api,index.html,style.css}
}
