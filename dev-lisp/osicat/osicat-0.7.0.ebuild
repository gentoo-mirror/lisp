# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

MY_P="${PN}_${PV}"

DESCRIPTION="Lightweight operating system interface for Common Lisp on Unix-platforms"
HOMEPAGE="https://osicat.common-lisp.dev/"
SRC_URI="https://osicat.common-lisp.dev/files/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="dev-lisp/alexandria
	dev-lisp/cffi
	dev-lisp/trivial-features"
