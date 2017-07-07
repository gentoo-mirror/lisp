# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="metabang.com's dynamic class utility."
HOMEPAGE="http://common-lisp.net/project/dynamic-classes/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/metatilities-base
		dev-lisp/lift"

src_install() {
	common-lisp-install-sources dev/*.lisp
	common-lisp-install-asdf
}
