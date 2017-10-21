# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Common Lisp re-implementation of the Rails routes system for mapping URLs."
HOMEPAGE="http://code.google.com/p/cl-routes/"
SRC_URI="https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/cl-routes/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/iterate
		dev-lisp/puri
		dev-lisp/split-sequence
		dev-lisp/lift"
