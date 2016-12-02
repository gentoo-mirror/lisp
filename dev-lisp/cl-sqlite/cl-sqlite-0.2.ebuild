# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

DESCRIPTION="A CommonLisp interface to the SQLite embedded relational database engine."
HOMEPAGE="http://common-lisp.net/project/cl-sqlite/"
SRC_URI="http://common-lisp.net/project/${PN}/releases/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cffi
		dev-lisp/iterate
		dev-lisp/fiveam
		dev-db/sqlite:3"

CLSYSTEMS="sqlite sqlite-tests"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml index.html style.css
}
