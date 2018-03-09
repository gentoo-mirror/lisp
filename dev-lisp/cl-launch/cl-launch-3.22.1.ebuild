# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit common-lisp-3

DESCRIPTION="cl-launch is a utility to make Common Lisp software easily invokable from the command-line."
HOMEPAGE="http://www.cliki.net/cl-launch"
SRC_URI="http://common-lisp.net/project/xcvb/${PN}/${P}.tar.gz"
LICENSE="LLGPL-2.1"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

S="${WORKDIR}"/"${PN}"

CL_LAUNCH_FASLDIR=/var/cache/cl-launch

src_install() {
	dobin cl-launch.sh
	common-lisp-install-sources -t all launcher.lisp wrapper.sh
	common-lisp-install-asdf
	keepdir "${CL_LAUNCH_FASLDIR}"
	fperms 1777 "${CL_LAUNCH_FASLDIR}"
}
