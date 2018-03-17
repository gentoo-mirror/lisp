# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="ASDF Extensions from Cyrus Harmon."
HOMEPAGE="http://www.cyrusharmon.org/projects?project=ch-asdf"
EGIT_REPO_URI="https://github.com/slyrus/ch-asdf"

LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
		dev-lisp/ch-util
		dev-lisp/puri"

src_install() {
	common-lisp-install-sources *.lisp version.lisp-expr
	common-lisp-install-asdf
}
