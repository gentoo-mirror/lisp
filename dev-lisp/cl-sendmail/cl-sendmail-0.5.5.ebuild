# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp library for sending email."
HOMEPAGE="http://www.cliki.net/cl-mime/"
SRC_URI="http://www.bobturf.org/software/${PN}/${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/cl-mime
		dev-lisp/cl-base64
		dev-lisp/xmls
		dev-lisp/xmls-tools"

S="${WORKDIR}"/${PN}

src_unpack() {
	unpack ${A} && cd "${S}"

}

src_prepare() {
	eapply "${FILESDIR}"/fix-asd-deps.patch
	eapply_user
}
