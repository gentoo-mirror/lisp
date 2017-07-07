# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 eutils

MY_P=${PN}_${PV}

DESCRIPTION="Library for serializing and deserializing Common Lisp objects from streams."
HOMEPAGE="http://common-lisp.net/project/cl-store/"
SRC_URI="http://common-lisp.net/project/${PN}/files/${MY_P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc"

DEPEND="sys-apps/texinfo
		doc? ( virtual/texi2dvi )"

S="${WORKDIR}"/${PN}

src_prepare() {
	rm -f xml* */custom-xml.lisp
}

src_compile() {
	cd doc || die
	makeinfo ${PN}.texi -o ${PN}.info || die
	if use doc ; then
		VARTEXFONTS="${T}"/fonts \
			texi2pdf ${PN}.texi -o ${PN}.pdf || die
	fi
}

src_install() {
	common-lisp-install-sources *.lisp abcl acl allegrocl clisp cmucl \
								ecl lispworks mcl openmcl sbcl
	common-lisp-install-asdf
	dodoc ChangeLog
	doinfo doc/${PN}.info
	use doc && dodoc doc/${PN}.pdf
}
