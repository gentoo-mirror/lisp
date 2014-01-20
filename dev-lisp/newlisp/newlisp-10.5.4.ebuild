# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils multilib

DESCRIPTION="newLISP - a new generation of Lisp!"
HOMEPAGE="http://www.newlisp.org/"
SRC_URI="http://www.newlisp.org/downloads/${P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="libffi unicode"

RDEPEND="sys-libs/readline
	libffi? ( dev-libs/libffi )"
DEPEND="${RDEPEND}"

getmakefile() {
	local arch=""
	local opts=""

	use amd64 && arch="LP64"
	use libffi && use unicode && opts="_utf8_ffi"
	use libffi && ! use unicode && opts="_ffi"
	! use libffi && use unicode && opts="_utf8"

	use unicode && utf8="utf8"
	echo "makefile_linux${arch}${opts}"
}

src_prepare() {
	epatch "${FILESDIR}/${PN}-makefile-install-${PV}.patch"
}

src_configure() {
	local makefile=$(getmakefile)
	if [[ -f ${makefile} ]] ; then
		cp "${makefile}" makefile_build || die
		sed -i 's/CFLAGS/MYCFLAGS/g' makefile_build || die
		sed -i 's/-O2 -g/$(CFLAGS)/g' makefile_build || die
	else
		./configure-alt --prefix="${D}/usr"
	fi
}

src_install() {
	make prefix="${D}/usr" install
}
