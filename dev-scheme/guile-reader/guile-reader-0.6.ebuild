# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools eutils git-2

DESCRIPTION="Guile-reader is a simple framework for building readers for GNU Guile."
HOMEPAGE="http://www.nongnu.org/guile-reader/"
#SRC_URI="ftp://foo.bar.com/${P}.tar.gz"
EGIT_REPO_URI="git://git.sv.gnu.org/guile-reader.git"
LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="\
	>=dev-scheme/guile-1.8"

RDEPEND="${DEPEND}"

#S="${WORKDIR}/${P}"

src_configure() {
	eautoreconf -i
	econf --with-guilemoduledir=/usr/share/guile/site || die "econf failed"
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
