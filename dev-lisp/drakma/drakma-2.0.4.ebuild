# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Drakma is a Common Lisp HTTP client."
HOMEPAGE="https://edicl.github.io/drakma/"
SRC_URI="https://github.com/edicl/${PN}/archive/v${PV}.tar.gz -> ${PF}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND="dev-lisp/chipz
		>=dev-lisp/chunga-1.1.0
		>=dev-lisp/cl-base64-3.3.2
		dev-lisp/cl-plus-ssl
		dev-lisp/cl-ppcre
		>=dev-lisp/puri-1.5.0
		>=dev-lisp/flexi-streams-1.0.7
		>=dev-lisp/usocket-0.4.0"
