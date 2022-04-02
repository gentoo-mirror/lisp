# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="Lightweight operating system interface for Common Lisp on Unix-platforms"
HOMEPAGE="https://osicat.common-lisp.dev/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}"

LICENSE="MIT"
SLOT="0"

RDEPEND="dev-lisp/alexandria
	dev-lisp/cffi
	dev-lisp/trivial-features"
