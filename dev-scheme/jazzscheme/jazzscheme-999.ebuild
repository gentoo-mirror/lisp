# Copyright 2000-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-scheme/tinyscheme/tinyscheme-1.39.ebuild,v 1.1 2008/05/08 10:07:42 hkbst Exp $

inherit git

DESCRIPTION="JazzScheme is an open source programming language based on Scheme."
HOMEPAGE="http://www.jazzscheme.org/"
#SRC_URI="http://www-etud.iro.umontreal.ca/~lasallej/${P}.tar.gz"
EGIT_REPO_URI="git://github.com/jazzscheme/jazz_dev.git"
#EGIT_REPO_URI="git://64.235.209.250/git/jazz_dev"

LICENSE="|| ( MPL-1.1 GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_compile() {
	sed "s:gsc-script:gsc-gambit:" -i kernel/build.scm
	vecho ">>> Configuring..."
	gsc-gambit configure || die
	vecho ">>> Building..."
	gsc-gambit make jedi || die
	gsc-gambit make all || die
}

src_install() {
	mkdir "${D}"/opt/
	mv * "${D}"/opt/
}
