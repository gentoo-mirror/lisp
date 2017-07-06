# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="An exceptionally trivial library for creating images suitable for a CAPTCHA."
HOMEPAGE="http://www.cliki.net/trivial-captcha"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_install() {
	common-lisp-install-sources *.lisp letters.pnm
	common-lisp-install-asdf
	dohtml doc/*
}
