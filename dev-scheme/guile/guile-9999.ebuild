# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic git-r3

MAJOR="3.0"
DESCRIPTION="GNU Ubiquitous Intelligent Language for Extensions"
HOMEPAGE="https://www.gnu.org/software/guile/"
#SRC_URI="mirror://gnu-alpha/guile/${P}.tar.gz"
EGIT_REPO_URI="git://git.sv.gnu.org/guile.git"

LICENSE="LGPL-3+"
SLOT="3.0"
KEYWORDS=""
IUSE="debug debug-malloc +deprecated +networking +regex +threads" # upstream recommended +networking
REQUIRED_USE="regex" # workaround for bug 596322
RESTRICT="strip"

RDEPEND="
	>=dev-libs/boehm-gc-7.2:=[threads?]
	>=dev-libs/gmp-4.2:=
	dev-libs/libffi:=
	>=dev-libs/libltdl-1.5.6:=
	>=dev-libs/libunistring-0.9.3:0=
	sys-libs/ncurses:0=
	sys-libs/readline:0="
DEPEND="${RDEPEND}"
BDEPEND="
	virtual/pkgconfig
	sys-devel/libtool
	sys-devel/gettext"

PATCHES=( "${FILESDIR}/${PN}-2.2.3-gentoo-sandbox.patch" )
DOCS=( GUILE-VERSION HACKING README )

src_prepare() {
	default

	./autogen.sh || die
}

src_configure() {
	# see bug #178499
	filter-flags -ftree-vectorize
	# see bug #598986
	append-cflags $(test-flags-CC -fno-fast-math)

	econf \
		--program-suffix="-${MAJOR}" \
		--infodir="${EPREFIX}"/usr/share/info/guile-${MAJOR} \
		--disable-error-on-warning \
		--disable-rpath \
		--disable-static \
		--enable-posix \
		--without-libgmp-prefix \
		--without-libiconv-prefix \
		--without-libintl-prefix \
		--without-libltdl-prefix \
		--without-libreadline-prefix \
		--without-libunistring-prefix \
		$(use_enable debug guile-debug) \
		$(use_enable debug-malloc) \
		$(use_enable deprecated) \
		$(use_enable networking) \
		$(use_enable regex) \
		$(use_with threads)
}

src_install() {
	default

	# The guile.m4 macro files conflicts with other slots
	mv "${ED}"/usr/share/aclocal/guile.m4 "${ED}"/usr/share/aclocal/guile-${MAJOR}.m4 || die "rename of guile.m4 failed"

	# Bug #590904, LDFLAGS are copied within the pkg-config gile
	sed -i "${ED}"/usr/$(get_libdir)/pkgconfig/guile-${MAJOR}.pc \
		-e s:"${LDFLAGS}"::

	# From Novell
	# 	https://bugzilla.novell.com/show_bug.cgi?id=874028#c0
	dodir /usr/share/gdb/auto-load/$(get_libdir)
	mv "${ED}"/usr/$(get_libdir)/libguile-*-gdb.scm "${ED}"/usr/share/gdb/auto-load/$(get_libdir) || die

	# necessary for registering slib, see bug 206896
	keepdir /usr/share/guile/site

	find "${D}" -name '*.la' -delete || die
}
