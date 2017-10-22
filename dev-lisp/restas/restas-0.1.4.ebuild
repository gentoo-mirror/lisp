# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 elisp-common eutils

MY_PV="version-${PV}"

DESCRIPTION="Common Lisp application server"
HOMEPAGE="https://github.com/archimag/restas"
SRC_URI="https://github.com/archimag/restas/archive/${MY_PV}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc slime"

RDEPEND=" >=dev-lisp/cl-routes-0.2.2
		 dev-lisp/alexandria
		 >=dev-lisp/hunchentoot-1.2.0
		 slime? ( dev-lisp/closer-mop )"

S="${WORKDIR}/${PN}-${MY_PV}"
SITEFILE=70${PN}-gentoo.el

src_compile () {
	if use slime ; then
		elisp-compile slime/${PN}.el || die "Cannot compile elisp files"
	fi
}

src_install() {
	common-lisp-install-sources src/ contrib slime/restas-swank.lisp
	common-lisp-install-asdf

	doinitd "${FILESDIR}"/restas.lo || die "doinitd failed"

	if use slime; then
		elisp-install ${PN} slime/${PN}.el || die "Cannot install elisp sources"
		elisp-site-file-install "${FILESDIR}"/${SITEFILE} || die "Cannot install elisp site file"
	fi
}

pkg_postinst() {
	use slime && elisp-site-regen
}

pkg_postrm() {
	use slime && elisp-site-regen
}
