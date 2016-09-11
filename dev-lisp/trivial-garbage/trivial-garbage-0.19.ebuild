# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-2

MY_P="${PN}_${PV}"

DESCRIPTION="Provides a portable library to finalizers, weak hash-tables and weak pointers."
HOMEPAGE="http://www.cliki.net/trivial-garbage"
SRC_URI="http://common-lisp.net/~loliveira/tarballs/${PN}/${MY_P}.tar.gz -> ${PF}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/${MY_P}
