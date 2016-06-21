# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

inherit common-lisp-3 git-2

DESCRIPTION="Provides auto-loading of systems that only make sense when other systems are loaded."
HOMEPAGE="http://common-lisp.net/project/cl-containers/asdf-system-connections/"
EGIT_REPO_URI="git://github.com/gwkkwg/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

#src_install() {
	#common-lisp-install dev/${PN}.lisp ${PN}.asd
	#common-lisp-symlink-asdf
#}
