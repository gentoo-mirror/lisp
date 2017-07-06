# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A library of macros and functions by Fare Rideau."
HOMEPAGE="http://www.cliki.net/meta"
EGIT_REPO_URI="https://gitlab.common-lisp.net/frideau/${PN}.git"

LICENSE="BSD-2"
SLOT="0"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
