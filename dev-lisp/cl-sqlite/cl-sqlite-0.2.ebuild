# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A CommonLisp interface to the SQLite embedded relational database engine"
HOMEPAGE="https://cl-sqlite.common-lisp.dev/"
SRC_URI="https://cl-sqlite.common-lisp.dev/releases/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="dev-lisp/cffi
		dev-lisp/iterate
		dev-lisp/fiveam
		dev-db/sqlite:3"

CLSYSTEMS="sqlite sqlite-tests"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	docinto html
	dodoc index.html style.css
}
