# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 elisp-common

MY_PV="version-${PV}"

DESCRIPTION="Common Lisp implementation of Closure Template from Google"
HOMEPAGE="https://github.com/archimag/cl-closure-template"
SRC_URI="https://github.com/archimag/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
#KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc emacs"

RDEPEND="dev-lisp/babel
		dev-lisp/closer-mop
		dev-lisp/esrap
		dev-lisp/iterate
		dev-lisp/parenscript
		dev-lisp/parse-number
		dev-lisp/lift
		emacs? ( >=app-editors/emacs-23.1:* )"

S="${WORKDIR}/${PN}-${MY_PV}"

SITEFILE="50${PN}-gentoo.el"

src_install() {
	common-lisp-install-sources -t all src t
	common-lisp-install-asdf

	if use doc; then
		docinto examples
		dodoc -r example/*
	fi

	if use emacs; then
		elisp-install ${PN} closure-template-html-mode.el
		elisp-site-file-install "${FILESDIR}"/${SITEFILE}
	fi

	dodoc README.markdown
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
