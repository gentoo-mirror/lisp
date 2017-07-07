# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_PV="version-${PV}_version-${PV}"

DESCRIPTION="CL-Markdown is a Common Lisp rewrite of Markdown."
HOMEPAGE="http://common-lisp.net/project/cl-markdown"
SRC_URI="https://github.com/gwkkwg/${PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/metatilities-base-0.6.0
		dev-lisp/metabang-bind
		dev-lisp/asdf-system-connections
		>=dev-lisp/cl-containers-0.11.5
		dev-lisp/dynamic-classes
		dev-lisp/anaphora
		dev-lisp/cl-ppcre"

S="${WORKDIR}/${PN}-${MY_PV}"

CLSYSTEMS="${PN} ${PN}-test"

src_install() {
	# TODO: Install unit-test files. Omitting them now because some of them
	#       contain spaces and this breaks common-lisp-3 eclass
	common-lisp-install-sources dev/*.lisp resources # unit-tests
	common-lisp-install-asdf
	dodoc *.config
}
