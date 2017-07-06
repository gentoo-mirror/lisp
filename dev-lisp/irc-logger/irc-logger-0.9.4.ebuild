# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit common-lisp-3 eutils

DESCRIPTION="A Common Lisp IRC logger library"
HOMEPAGE="http://www.cliki.net/irc-logger"
SRC_URI="http://files.b9.com/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/cl-irc
		dev-lisp/cl-ppcre
		dev-lisp/acl-compat"

src_unpack() {
	unpack ${A}
}

src_prepare() {
	eapply "${FILESDIR}"/${PV}-acl-compat-gentoo.patch
	eapply_user
}

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc "${FILESDIR}"/README.Gentoo
}

pkg_postinst() {
	while read line; do
		einfo "${line}";
	done < "${FILESDIR}"/README.Gentoo
}
