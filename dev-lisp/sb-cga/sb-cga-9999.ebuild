# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Computer graphics algebra library for SBCL."
HOMEPAGE="https://github.com/nikodemus/sb-cga"
EGIT_REPO_URI="https://github.com/nikodemus/${PN}"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/sbcl
		dev-lisp/alexandria"
