# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="CFFI Add-on: Foreign Structures By Value."
HOMEPAGE="http://common-lisp.net/project/gsll/"
EGIT_REPO_URI="git://repo.or.cz/fsbv.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/cffi-0.10.5
		dev-lisp/trivial-features
		virtual/libffi"

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml readme.html
}
