# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Straightforward Common Lisp recaptcha.com interconnection"
HOMEPAGE="https://github.com/madnificent/cl-recaptcha/"
SRC_URI="https://github.com/madnificent/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

RDEPEND=">=dev-lisp/drakma-1.0.0
		dev-lisp/split-sequence
		dev-lisp/cl-ppcre"
