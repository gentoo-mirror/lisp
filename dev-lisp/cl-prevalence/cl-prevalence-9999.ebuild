# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 mercurial

DESCRIPTION="CL-PREVALENCE is an implementation of Object Prevalence for Common Lisp."
HOMEPAGE="http://www.common-lisp.net/project/cl-prevalence/"
EHG_REPO_URI="http://bitbucket.org/skypher/${PN}"

LICENSE="LLGPL-2.1"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/fiveam
		dev-lisp/s-xml
		dev-lisp/s-sysdeps"
