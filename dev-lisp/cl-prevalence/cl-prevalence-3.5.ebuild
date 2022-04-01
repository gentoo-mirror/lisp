# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3

DESCRIPTION="CL-PREVALENCE is an implementation of Object Prevalence for Common Lisp"
HOMEPAGE="https://cl-prevalence.common-lisp.dev/"
SRC_URI="http://bitbucket.org/skypher/${PN}/get/${PV}.gz -> ${P}.tar.gz"
S="${WORKDIR}"/skypher-${PN}-1edf5cd93bb9

LICENSE="LLGPL-2.1"
SLOT="0"
#KEYWORDS="~amd64 ~ppc ~sparc ~x86"

RDEPEND="dev-lisp/fiveam
	dev-lisp/s-xml
	dev-lisp/s-sysdeps"
