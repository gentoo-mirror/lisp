# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp client implementation of the XMPP."
HOMEPAGE="http://common-lisp.net/project/cl-xmpp/"
SRC_URI="http://common-lisp.net/project/${PN}/${P}.tar.gz"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-lisp/usocket
		 dev-lisp/cxml
		 dev-lisp/ironclad
		 dev-lisp/cl-base64
		 dev-lisp/cl-sasl
		 dev-lisp/cl-plus-ssl"
