# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools eutils

DESCRIPTION="Guile-reader is a simple framework for building readers for GNU Guile."
HOMEPAGE="http://www.nongnu.org/guile-reader/"
SRC_URI="'mirror://nongnu/releases/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-scheme/guile-1.8:12"

RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf -i
	eapply_user
}

src_configure() {
	econf --with-guilemoduledir=/usr/share/guile/site/2.0
}

src_install() {
	emake DESTDIR="${D}" install
}
