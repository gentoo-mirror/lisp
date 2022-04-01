# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Common Lisp bindings for the Cairo API"
HOMEPAGE="https://cliki.net/cl-cairo2"
EGIT_REPO_URI="https://github.com/rpav/cl-cairo2"

LICENSE="Boost-1.0"
SLOT="0"

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
