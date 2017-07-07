# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PN="Postmodern"

DESCRIPTION="A Common Lisp library for interacting with PostgreSQL databases."
HOMEPAGE="http://marijnhaverbeke.nl/postmodern/"
SRC_URI="https://github.com/marijnh/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/md5
		dev-lisp/usocket
		dev-lisp/ieee-floats
		dev-lisp/trivial-utf8
		dev-lisp/closer-mop
		dev-lisp/bordeaux-threads
		dev-lisp/fiveam"

CLSYSTEMS="cl-postgres postmodern simple-date s-sql"

S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	common-lisp-install-sources ${CLSYSTEMS}
	common-lisp-install-asdf
	dodoc doc/*
}
