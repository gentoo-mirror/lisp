# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Lisp Application Builder Interface to libSDL"
HOMEPAGE="http://code.google.com/p/lispbuilder/"
SRC_URI="http://lispbuilder.googlecode.com/files/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="media-libs/libpng
		media-libs/jpeg
		media-libs/tiff
		media-libs/sdl-image
		dev-lisp/cffi
		dev-lisp/lispbuilder-sdl"

S="${WORKDIR}/${PN}"

CLSYSTEMS="lispbuilder-sdl-image lispbuilder-sdl-image-cffi lispbuilder-sdl-image-examples"

src_prepare() {
	eapply "${FILESDIR}"/gentoo-fix-asd.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources cffi examples sdl-image
	common-lisp-install-asdf
}
