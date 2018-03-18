# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Common Lisp library for encoding text in various web-savvy formats."
HOMEPAGE="http://www.cliki.net/html-encode"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
