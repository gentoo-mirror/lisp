# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# for live ebuilds uncomment inherit git-2, comment SRC_URI and empty KEYWORDS

NEED_EMACS=23

inherit elisp git-r3

DESCRIPTION="Emacs modes for Scheme interaction"
HOMEPAGE="http://www.nongnu.org/geiser/"
#SRC_URI="mirror://nongnu/${PN}/${PV}/${P}.tar.gz"
EGIT_REPO_URI="git://git.sv.gnu.org/geiser.git"

LICENSE="BSD"
IUSE=""

KEYWORDS=""
SLOT="0"

DEPEND=""
RDEPEND=""

SITEFILE="50${PN}-gentoo.el"

src_prepare() {
	./autogen.sh || die
}

src_configure() {
	econf --with-lispdir="${SITELISP}/${PN}"
}

src_install() {
	emake DESTDIR="${D}" install

	elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	dodoc AUTHORS NEWS README THANKS
}

pkg_postinst() {
	elisp-site-regen
}

pkg_postrm() {
	elisp-site-regen
}
