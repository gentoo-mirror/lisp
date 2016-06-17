# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for Common Lisp"
HOMEPAGE="http://www.gentoo.org/proj/en/lisp/index.xml"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="|| ( dev-lisp/sbcl
	dev-lisp/clisp
	dev-lisp/clozurecl
	dev-lisp/cmucl
	dev-lisp/ecls )"
