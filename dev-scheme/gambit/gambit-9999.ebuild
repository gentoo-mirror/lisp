# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools elisp-common git-r3

MY_P="${PN}-v$(ver_rs 1-3 _)"

DESCRIPTION="Gambit-C is a native Scheme to C compiler and interpreter"
HOMEPAGE="http://gambitscheme.org/wiki/index.php/Main_Page"
#SRC_URI="http://www-labs.iro.umontreal.ca/~gambit/download/gambit/v$(ver_cut 1-2)/source/${MY_P}.tgz"
EGIT_REPO_URI="https://github.com/gambit/gambit.git"

LICENSE="|| ( Apache-2.0 LGPL-2.1 )"
SLOT="0"
KEYWORDS=""

RDEPEND="ssl? (
		!libressl? ( dev-libs/openssl:0= )
		libressl? ( dev-libs/libressl:0= )
	)"
DEPEND="
	${RDEPEND}
"
BDEPEND="emacs? ( virtual/emacs )"

SITEFILE="50gambit-gentoo.el"

IUSE="emacs libressl ssl static"

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable !static shared) \
		$(use_enable ssl openssl) \
		--docdir="${EPREFIX}"/usr/share/doc/${PF} \
		--enable-gnu-gcc-specific-options \
		--enable-gnu-gcc-no-strict-aliasing \
		--enable-single-host \
		--disable-absolute-shared-libs \
		--enable-type-checking
}

src_compile() {
	emake

	if use emacs; then
		elisp-compile misc/*.el || die
	fi
}

src_install() {
	emake DESTDIR="${D}" install
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
