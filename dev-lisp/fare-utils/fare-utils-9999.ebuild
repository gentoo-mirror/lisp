# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A collection of small utilities by Fare Rideau."
HOMEPAGE="http://www.cliki.net/fare-utils"
EGIT_REPO_URI="https://gitlab.common-lisp.net/frideau/fare-utils.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
