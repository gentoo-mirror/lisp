# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils flag-o-matic multilib toolchain-funcs

DESCRIPTION="Linedit is a readline-style library written in Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/linedit/"
SRC_URI="https://dev.gentoo.org/~nimiux/${CATEGORY}/${PN}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/osicat
		dev-lisp/terminfo
		dev-lisp/uffi"

HTML_DOCS=( public_html/. )

@cc() {
	local cc=$(tc-getCC)
	echo "${cc}" "${@}"
	"${cc}" "${@}"
}

create_uffi_loader() {
	cat > uffi-loader.lisp <<-EOF
	;;;; -*- mode: lisp; syntax: common-lisp; indent-tabs-mode: nil; base: 10; package: linedit -*-
	(in-package :linedit)

	(uffi:load-foreign-library #p"/usr/$(get_libdir)/linedit/signals.so")
	(uffi:load-foreign-library #p"/usr/$(get_libdir)/linedit/terminal_glue.so")
	EOF
}

src_prepare() {
	default
	# terminfo lives in a separate package
	rm "${S}"/terminfo.* || die
	eapply "${FILESDIR}"/${PV}-${PN}.asd-uffi-glue.patch
	eapply "${FILESDIR}"/${PV}-${PN}.asd-drop-madeira-port.patch
	create_uffi_loader
}

src_compile() {
	strip-flags
	@cc "terminal_glue.c" ${CFLAGS} ${LDFLAGS} \
		-fPIC -DPIC -shared -Wl,-soname="terminal_glue" -o "terminal_glue.so" \
		|| die
}

src_install() {
	common-lisp-install-sources -t all *.lisp ports/
	common-lisp-install-asdf
	einstalldocs
	exeinto "/usr/$(get_libdir)/${PN}"
	doexe *.so
}
