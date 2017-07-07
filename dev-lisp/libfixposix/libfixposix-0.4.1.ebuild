# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="Thin wrapper over POSIX syscalls"
HOMEPAGE="https://github.com/sionescu/libfixposix"
SRC_URI="https://github.com/sionescu/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_prepare() {
	default
	eautoreconf
}
