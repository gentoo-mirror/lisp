# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV=${PV:0:4}-${PV:4:2}-${PV:6:2}

DESCRIPTION="A Common Lisp XML library implementing namespaces, a validating SAX-like XML 1.0 parser and the DOM Level 1 Core interfaces."
HOMEPAGE="http://common-lisp.net/project/cxml/"
SRC_URI="http://common-lisp.net/project/${PN}/download/${PN}-${MY_PV}.tgz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		>=dev-lisp/closure-common-${PV}
		dev-lisp/puri
		dev-lisp/trivial-gray-streams"

CLSYSTEMS="${PN} ${PN}-contrib"

S="${WORKDIR}"/${PN}-${MY_PV}

src_unpack() {
	unpack ${A}
}

src_prepare() {
	rm "${S}"/GNUmakefile || die
	cp "${FILESDIR}"/${PN}-contrib.asd "${S}" || die
}

src_install() {
	common-lisp-install-sources *.dtd
	common-lisp-install-sources {contrib,dom,klacks,test,xml,xml/sax-tests}/*.lisp
	common-lisp-install-asdf

	dodoc README OLDNEWS TIMES
	dohtml doc/*.{html,css,png}
}
