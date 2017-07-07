# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A library for .zip-file reading and writing, written in Common Lisp."
HOMEPAGE="http://common-lisp.net/project/zip/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/salza2
		dev-lisp/flexi-streams
		dev-lisp/trivial-gray-streams"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml README.html
}
