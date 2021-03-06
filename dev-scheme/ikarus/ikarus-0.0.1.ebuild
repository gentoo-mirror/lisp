# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Ikarus is a free optimizing incremental native-code compiler for R6RS Scheme."
HOMEPAGE="http://www.cs.indiana.edu/~aghuloum/ikarus/index.html"
SRC_URI="http://www.cs.indiana.edu/~aghuloum/ikarus/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"

KEYWORDS="-* ~x86"
IUSE=""

DEPEND="dev-libs/gmp:0"
#for docs probably need dev-texlive/texlive-xetex but I can't test
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
