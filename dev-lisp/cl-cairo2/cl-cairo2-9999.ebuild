# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Comon Lisp bindings for the Cairo API"
HOMEPAGE="http://cliki.net/cl-cairo2"
EGIT_REPO_URI="git://github.com/rpav/cl-cairo2.git"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cffi
		dev-lisp/cl-utilities
		dev-lisp/cl-colors
		dev-lisp/metabang-bind
		dev-lisp/trivial-garbage
		dev-lisp/trivial-features
		>=x11-libs/cairo-1.6"

CLSYSTEMS="${PN} ${PN}-xlib ${PN}-quartz ${PN}-win32"

src_install() {
	common-lisp-install-sources src
	common-lisp-install-asdf
	dodoc README* TODO
	docinto tutorial && dodoc tutorial/*.{lisp,pdf}
}
