# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp library that provides a namespace for readtables."
HOMEPAGE="http://common-lisp.net/project/editor-hints/"
SRC_URI="http://common-lisp.net/project/editor-hints/releases/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

src_install() {
	common-lisp-install-sources *.lisp tests/*.lisp
	common-lisp-install-asdf
	use doc && dodoc doc/${PN}.html
}
