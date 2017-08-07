# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A Common Lisp abstraction layer over platform dependent functionality."
HOMEPAGE="https://github.com/svenvc/s-sysdeps"
EGIT_REPO_URI="https://github.com/svenvc/${PN}"

LICENSE="LLGPL-2.1"
SLOT="0"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"
