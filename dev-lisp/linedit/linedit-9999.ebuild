# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 flag-o-matic git-r3 multilib toolchain-funcs

DESCRIPTION="Linedit is a readline-style library written in Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/linedit/"
EGIT_REPO_URI="https://gitlab.common-lisp.net/${PN}/${PN}.git"

LICENSE="MIT"
SLOT="0"
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

cleanup_terminfo_files() {
	rm "${D}/${CLSOURCEROOT}/${PN}/terminfo.lisp" || die
	rm "${D}/${CLSYSTEMROOT}/terminfo.asd" || die
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-${PN}.asd-uffi-glue-gentoo.patch
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
	cleanup_terminfo_files
	exeinto "/usr/$(get_libdir)/${PN}"
	doexe *.so
}
