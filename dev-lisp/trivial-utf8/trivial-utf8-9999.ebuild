# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit common-lisp-3 darcs

DESCRIPTION="A small library for doing UTF-8-based input and output."
HOMEPAGE="http://common-lisp.net/project/trivial-utf-8/"
EDARCS_REPOSITORY=" https://www.common-lisp.net/project/trivial-utf-8/darcs/trivial-utf-8/"

LICENSE="ZLIB"
SLOT="0"
IUSE=""

CLPACKAGE="trivial-utf-8"
CLSYSTEMS="trivial-utf-8"

src_install() {
	common-lisp-install-sources -t lisp .
	common-lisp-install-asdf
	dodoc -r doc
}
