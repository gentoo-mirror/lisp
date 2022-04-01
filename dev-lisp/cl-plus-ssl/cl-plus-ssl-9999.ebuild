# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A simple Common Lisp interface to OpenSSL."
HOMEPAGE="https://cl-plus-ssl.common-lisp.dev/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}"

LICENSE="MIT"
SLOT="0"

RDEPEND=">=dev-lisp/cffi-0.9.2_p20080723
		dev-lisp/trivial-garbage
		dev-lisp/trivial-gray-streams
		dev-lisp/flexi-streams
		dev-libs/openssl"

src_install() {
	common-lisp-3_src_install
	dodoc index.{css,html}
}
