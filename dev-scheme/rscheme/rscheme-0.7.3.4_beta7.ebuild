# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit versionator

MY_PN=rs
MY_PV=${PV/_beta/-b}
MY_P=${MY_PN}-${MY_PV}

BUILD=$(get_version_component_range 5 ${PV/_beta/.})

DESCRIPTION="RScheme is an implementation of the Scheme language, with it's object-orientation approach adapted from the Dylan language. RScheme implements all of R4RS except transcript-on and transcript-off, and all of R5RS except define-syntax (RScheme still employs it's own the hygienic syntactic extension facility with analagous but not compatible metasyntax to R5RS's define-syntax)."

HOMEPAGE="http://www.rscheme.org/rs/"

SRC_URI="http://www.rscheme.org/rs/b/${PV/_*/}/${BUILD}/${MY_P}.tar.gz"

LICENSE="as-is"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

src_compile() {
	emake -j1 stage1 || die
	cd src
	econf || die "econf failed"
}

src_install() {
	cd src
	sed 's:INSTALL_DIR=/usr:INSTALL_DIR=$(DESTDIR)/usr:' -i Makefile
	emake -j1 DESTDIR="${D}" all || die
}
