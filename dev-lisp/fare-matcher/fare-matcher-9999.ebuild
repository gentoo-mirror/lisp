# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

MY_PV=${PV:0:4}-${PV:4:2}-${PV:6:2}

DESCRIPTION="A library of macros and functions by Fare Rideau."
HOMEPAGE="http://www.cliki.net/fare-matcher
		http://www.cliki.net/fare-matcher-docs"
EGIT_REPO_URI="https://gitlab.common-lisp.net/frideau/fare-matcher"

LICENSE="No-Problem-Bugroff"
SLOT="0"
IUSE=""

RDEPEND="dev-lisp/fare-utils"

pkg_postinst() {
	while read line; do einfo ${line}; done <<EOF

The comments within the source for fare-matcher provide documentation.
You can find summarized documentation at the CLiki.

	http://www.cliki.net/fare-matcher-docs

EOF
}
