# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="A Common Lisp abstraction layer over platform dependent functionality."
HOMEPAGE="https://github.com/svenvc/s-sysdeps"
EGIT_REPO_URI="git://github.com/svenvc/${PN}.git"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

#src_install() {
	#common-lisp-install-sources src test
	#common-lisp-install-asdf ${PN}.asd
	#dohtml doc/*.html
	#dodoc README.txt
#}
