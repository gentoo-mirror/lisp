# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="An Ajax Common Lisp Library using parenscript and hunchentoot"
HOMEPAGE="https://github.com/aarvid/SmackJack"
EGIT_REPO_URI="git://github.com/aarvid/SmackJack"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="dev-lisp/alexandria
	dev-lisp/hunchentoot
	dev-lisp/cl-json
	dev-lisp/parenscript
	dev-lisp/cl-containers"

#src_install() {
#	common-lisp-install-sources -t all *.lisp LICENCE
#	common-lisp-install-asdf
#	dodoc README AUTHORS
#	use doc && doinfo doc/${PN}.info && dohtml doc/${PN}.html && dodoc doc/${PN}.pdf
#}
