# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

MY_P="${PN}_${PV}"

DESCRIPTION="${PN} is a lightweight operating system interface for Common Lisp on Unix-platforms."
HOMEPAGE="http://www.common-lisp.net/project/osicat/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/alexandria
		dev-lisp/cffi
		dev-lisp/trivial-features"

S="${WORKDIR}/${MY_P}"
