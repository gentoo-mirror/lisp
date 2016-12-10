# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools git-r3

DESCRIPTION="Thin wrapper over POSIX syscalls"
HOMEPAGE="https://github.com/sionescu/libfixposix"
EGIT_REPO_URI="git://github.com/sionescu/${PN}"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_prepare() {
	default
	eautoreconf
}
