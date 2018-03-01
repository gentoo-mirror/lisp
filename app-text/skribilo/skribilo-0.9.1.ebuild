# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Skribilo is a free document production tool."
HOMEPAGE="http://www.nongnu.org/skribilo/"
SRC_URI="http://download.savannah.gnu.org/releases/${PN}/${PF}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="\
	>=dev-scheme/guile-1.8:12
	>=dev-scheme/guile-reader-0.3
	>=app-text/lout-3.36
	media-libs/ploticus"

RDEPEND="${DEPEND}"

#S="${WORKDIR}/${P}"

src_unpack() {
	unpack ${A}
	cd "${S}" || die
}

src_configure() {
	econf --with-guilemoduledir=/usr/share/guile/site
}

src_compile() {
	emake -j1
}

src_install() {
	emake DESTDIR="${D}" install
}
