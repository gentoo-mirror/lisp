# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3

MY_V="v${PV}"

DESCRIPTION="Simple library that provides a portable API to finalizers, weak hash-tables and weak pointers."
HOMEPAGE="http://www.cliki.net/trivial-garbage"
SRC_URI="https://github.com/${PN}/${PN}/archive/${MY_V}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
