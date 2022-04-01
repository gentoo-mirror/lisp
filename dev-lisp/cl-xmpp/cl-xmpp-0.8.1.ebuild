# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp client implementation of the XMPP."
HOMEPAGE="https://cl-xmpp.common-lisp.dev/"
SRC_URI="https://cl-xmpp.common-lisp.dev/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="dev-lisp/usocket
		 dev-lisp/cxml
		 dev-lisp/ironclad
		 dev-lisp/cl-base64
		 dev-lisp/cl-sasl
		 dev-lisp/cl-plus-ssl"
