# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp IRC client library"
HOMEPAGE="https://cl-irc.common-lisp.dev/"
SRC_URI="https://cl-irc.common-lisp.dev/releases/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

RDEPEND="dev-lisp/split-sequence
		dev-lisp/usocket
		dev-lisp/flexi-streams"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc CREDITS ChangeLog README
	docinto doc && dodoc doc/*.txt
	docinto example && dodoc example/*
}
