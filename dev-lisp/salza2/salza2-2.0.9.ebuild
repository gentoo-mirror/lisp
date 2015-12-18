# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

DESCRIPTION="A compression library for creating data in the ZLIB, DEFLATE, or GZIP data formats."
HOMEPAGE="http://www.xach.com/lisp/salza2/"
SRC_URI="https://github.com/xach/${PN}/archive/release-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}/${PN}-release-${PV}"
