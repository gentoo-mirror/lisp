# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A Common Lisp library for working with Amazon's Simple Storage Service (S3)."
HOMEPAGE="https://www.xach.com/lisp/zs3/"
SRC_URI="https://github.com/xach/${PN}/archive/release-${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-release-${PV}"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="dev-lisp/alexandria
		dev-lisp/cxml
		dev-lisp/chunga
		>=dev-lisp/drakma-1.0.0
		dev-lisp/ironclad
		dev-lisp/puri
		dev-lisp/cl-base64"

src_install() {
	common-lisp-3_src_install
	dodoc doc/*
}
