# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools eutils

DESCRIPTION="Guile-reader is a simple framework for building readers for GNU Guile."
HOMEPAGE="http://www.nongnu.org/guile-reader/"
SRC_URI="mirror://nongnu/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-scheme/guile-1.8:="
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/configure-guile-snarf.patch" )

src_prepare() {
		default
		eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install
}
