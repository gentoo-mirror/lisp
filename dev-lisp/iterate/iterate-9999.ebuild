# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 darcs

DESCRIPTION="ITERATE is a lispy and extensible replacement for the Common Lisp LOOP macro"
HOMEPAGE="http://common-lisp.net/project/iterate/"
EDARCS_REPOSITORY="http://www.common-lisp.net/project/iterate/darcs/${PN}/"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
