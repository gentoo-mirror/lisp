# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_P="${PN}"."${PV}"

DESCRIPTION="CL-LOG is a general purpose logging utility."
HOMEPAGE="http://www.nicklevine.org/cl-log/"
SRC_URI="http://www.nicklevine.org/cl-log/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}"/"${MY_P}"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dodoc doc/index.txt
}
