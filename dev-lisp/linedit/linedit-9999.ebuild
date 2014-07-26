# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3 eutils flag-o-matic git-2 multilib toolchain-funcs

DESCRIPTION="Linedit is a readline-style library written in Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/linedit/"
EGIT_REPO_URI="git://common-lisp.net/projects/${PN}/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/alexandria
		dev-lisp/madeira-port
		>=dev-lisp/osicat-0.6.0
		dev-lisp/terminfo
		dev-lisp/uffi"

CFILES="terminal_glue"

@cc() {
	local cc=$(tc-getCC)
	echo "${cc}" "${@}"
	"${cc}" "${@}"
}


create_uffi_loader() {
	cat > uffi-loader.lisp <<-EOF
	;;;; -*- mode: lisp; syntax: common-lisp; indent-tabs-mode: nil; base: 10; package: linedit -*-
	(in-package :linedit)
                                                             
	(uffi:load-foreign-library #p"/usr/$(get_libdir)/linedit/terminal_glue.so")
	EOF
}

src_prepare() {
	epatch "${FILESDIR}"/${PV}-${PN}.asd-uffi-glue-gentoo.patch
	create_uffi_loader
}

src_compile() {
	strip-flags
	for filename in "${CFILES}" ; do
		@cc "${filename}.c" ${CFLAGS} ${LDFLAGS} \
	    	-fPIC -DPIC -shared -Wl,-soname="${filename}" -o "${filename}.so" \
	       	|| die "Cannot compile ${filename}.c"
	done
}

src_install() {
	common-lisp-install-sources *.lisp ports/
	common-lisp-install-asdf
	exeinto "/usr/$(get_libdir)/${PN}"
	doexe *.so
}
