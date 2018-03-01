# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Manage multiple Guile versions on one system"
HOMEPAGE="https://www.gentoo.org/proj/en/lisp/scheme/"
#SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~ppc-aix ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

# Versions prior to guile-1.8.8-r2 aren't properly slotted
DEPEND=""
RDEPEND=">=app-admin/eselect-1.2.6
	!<dev-scheme/guile-1.8.8-r3"

# We don't have any source directory to work on.
S="${T}"

src_install() {
	insinto /usr/share/eselect/modules
	doins "${FILESDIR}"/guile.eselect
	doman "${FILESDIR}"/guile.eselect.5
	#dodoc ChangeLog
}

pkg_prerm() {
	# Cleanup remaining symlinks
	eselect guile clean
}
