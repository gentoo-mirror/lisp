# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 elisp-common

MY_PV="version-${PV}"

DESCRIPTION="Common Lisp application server"
HOMEPAGE="https://github.com/archimag/restas"
SRC_URI="https://github.com/archimag/restas/archive/${MY_PV}.tar.gz"
S="${WORKDIR}/${PN}-${MY_PV}"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc emacs"

RDEPEND=" >=dev-lisp/cl-routes-0.2.2
		 dev-lisp/alexandria
		 >=dev-lisp/hunchentoot-1.2.0
		 emacs? ( dev-lisp/closer-mop )"

SITEFILE=70${PN}-gentoo.el

src_compile () {
	if use emacs ; then
		elisp-compile slime/${PN}.el || die "Cannot compile elisp files"
	fi
}

src_install() {
	common-lisp-install-sources src/ contrib slime/restas-swank.lisp
	common-lisp-install-asdf

	doinitd "${FILESDIR}"/restas.lo || die "doinitd failed"

	if use emacs; then
		elisp-install ${PN} slime/${PN}.el || die "Cannot install elisp sources"
		elisp-site-file-install "${FILESDIR}"/${SITEFILE} || die "Cannot install elisp site file"
	fi
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
