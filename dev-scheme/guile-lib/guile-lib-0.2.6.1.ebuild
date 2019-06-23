# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="An accumulation place for pure-scheme Guile modules"
HOMEPAGE="http://www.nongnu.org/guile-lib/"
SRC_URI="http://download.savannah.gnu.org/releases/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux"
IUSE=""
RESTRICT="strip"

RDEPEND=">=dev-scheme/guile-2.0.12[regex,deprecated]"
DEPEND="${RDEPEND} !<dev-libs/g-wrap-1.9.8"

PATCHES=(
	"${FILESDIR}/${P}-configure.patch"
)

src_prepare() {
	default
	eautoreconf
}
