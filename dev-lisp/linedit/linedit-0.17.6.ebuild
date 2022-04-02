# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 #flag-o-matic multilib toolchain-funcs

DESCRIPTION="Linedit is a readline-style library written in Common Lisp."
HOMEPAGE="https://linedit.common-lisp.dev/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-lisp/alexandria
		dev-lisp/babel
		dev-lisp/cffi
		dev-lisp/osicat
		dev-lisp/terminfo"

#@cc() {
#	local cc=$(tc-getCC)
#	echo "${cc}" "${@}"
#	"${cc}" "${@}"
#}

#create_uffi_loader() {
	#cat > uffi-loader.lisp <<-EOF
	#;;;; -*- mode: lisp; syntax: common-lisp; indent-tabs-mode: nil; base: 10; package: linedit -*-
	#(in-package :linedit)
#
	#(uffi:load-foreign-library #p"/usr/$(get_libdir)/linedit/signals.so")
	#(uffi:load-foreign-library #p"/usr/$(get_libdir)/linedit/terminal_glue.so")
	#EOF
#}

#src_prepare() {
	#create_uffi_loader
	#eapply_user
#}

#src_compile() {
	#strip-flags
	#$(tc-getCC) "terminal_glue.c" ${CFLAGS} ${LDFLAGS} \
		#-fPIC -DPIC -shared -Wl,-soname="terminal_glue" -o "terminal_glue.so" \
		#|| die
#}

#src_install() {
	#common-lisp-install-sources -t all *.lisp ports/
	#common-lisp-install-asdf
	#einstalldocs
	#exeinto "/usr/$(get_libdir)/${PN}"
	#doexe *.so
#}
