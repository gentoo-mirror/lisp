# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

DESCRIPTION="Common Lisp CFFI-based interface to graphviz."
HOMEPAGE="http://common-lisp.net/project/cl-graphviz/"
SRC_URI="http://common-lisp.net/~sionescu/files/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="media-gfx/graphviz
		dev-lisp/cffi
		dev-lisp/metabang-bind"

src_prepare() {
	eapply "${FILESDIR}"/gentoo-fix-libgvc-loading.patch
	eapply_user
}
