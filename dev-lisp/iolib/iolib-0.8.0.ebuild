# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Comm Lisp I/O library."
HOMEPAGE="http://common-lisp.net/project/iolib/"
SRC_URI="http://common-lisp.net/project/iolib/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/alexandria
		 dev-lisp/babel
		 dev-lisp/bordeaux-threads
		 >=dev-lisp/cffi-0.10.6
		 dev-lisp/cl-ppcre
		 dev-lisp/fiveam
		 dev-lisp/libfixposix
		 dev-lisp/trivial-features
		 dev-lisp/trivial-garbage"

CLSYSTEMS="iolib.asd asdf2-compat/iolib.base.asd \
		asdf2-compat/iolib.multiplex.asd asdf2-compat/iolib.os.asd \
		asdf2-compat/iolib.pathnames.asd asdf2-compat/iolib.sockets.asd \
		asdf2-compat/iolib.streams.asd asdf2-compat/iolib.syscalls.asd \
		asdf2-compat/iolib.trivial-sockets.asd \
		asdf2-compat/iolib.examples.asd asdf2-compat/iolib-tests.asd"

src_install() {
	common-lisp-install-sources -t all src examples
	common-lisp-install-sources -t all version.lisp-expr tests
	common-lisp-install-asdf
	dodoc CHANGES README
}
