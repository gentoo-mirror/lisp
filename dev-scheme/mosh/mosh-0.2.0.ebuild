# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit multilib eutils

DESCRIPTION="A Fast R6RS Scheme interpreter."
HOMEPAGE="http://code.google.com/p/mosh-scheme/"
SRC_URI="http://mosh-scheme.googlecode.com/files/${P}.tar.gz"
RESTRICT="mirror"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
}