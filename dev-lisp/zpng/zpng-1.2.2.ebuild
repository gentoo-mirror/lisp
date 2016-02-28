# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

MY_P="release-${PV}"

DESCRIPTION="A Common Lisp library for creating PNG files."
HOMEPAGE="http://www.xach.com/lisp/zpng/"
SRC_URI="https://github.com/xach/${PN}/archive/${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/salza2"

S="${WORKDIR}/${PN}-${MY_P}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml doc/{index.html,*.png}
	docinto examples && dodoc doc/*.lisp
}
