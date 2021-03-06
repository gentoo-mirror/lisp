# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Closure is a web browser implemented in Common Lisp, implemented using CLIM."
HOMEPAGE="http://common-lisp.net/project/closure"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cxml
		dev-lisp/closure-html
		dev-lisp/mcclim
		dev-lisp/bordeaux-threads
		dev-lisp/trivial-sockets
		dev-lisp/zip
		dev-lisp/flexi-streams
		dev-lisp/skippy
		media-libs/jpeg"

src_install() {
	common-lisp-install-sources resources src
	common-lisp-install-asdf
}
