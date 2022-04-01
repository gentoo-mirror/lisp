# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 flag-o-matic toolchain-funcs

DESCRIPTION="A multi-platform SQL interface for Common Lisp"
HOMEPAGE="https://clsql.kpe.io/
		https://www.cliki.net/CLSQL"
SRC_URI="http://files.kpe.io/clsql/${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="doc examples mysql odbc postgres sqlite"

RDEPEND="dev-lisp/md5
	>=dev-lisp/uffi-2.0.0
	mysql? ( virtual/mysql )
	odbc? ( dev-db/unixODBC )
	postgres? ( dev-db/postgresql )
	sqlite? ( dev-db/sqlite:3 )"
	#oracle? ( dev-db/oracle-instantclient-basic )

src_prepare() {
	sed -i "s,/usr/lib,/usr/$(get_libdir),g" "${S}"/${PN}-{mysql,uffi}.asd || die
	sed -i 's,"usr" "lib","usr" "'$(get_libdir)'",g' "${S}"/${PN}-{mysql,uffi}.asd || die
	eapply_user
}

@cc() {
	local cc=$(tc-getCC)
	echo "${cc}" "${@}"
	"${cc}" "${@}"
}

src_compile() {
	strip-flags
	@cc uffi/clsql_uffi.c \
		${CPPFLAGS} ${CFLAGS} ${LDFLAGS} -rdynamic \
		-fPIC -DPIC -shared -Wl,-soname=clsql_uffi -o uffi/clsql_uffi.so \
		|| die "Cannot build UFFI helper library"
	if use mysql; then
		@cc db-mysql/clsql_mysql.c \
			${CPPFLAGS} ${CFLAGS} ${LDFLAGS} $(mysql_config --cflags) -rdynamic \
			-fPIC -DPIC -shared -Wl,-soname=clsql_mysql -o db-mysql/clsql_mysql.so \
			|| die "Cannot build foreign glue to libmysqlclient"
	fi
}

install_clsql_pkg() {
	local pkgname="${1}"
	local libname="${pkgname}/${PN}_${pkgname}.so"

	cd "${S}" || die
	common-lisp-install-sources db-${pkgname}
	common-lisp-install-asdf ${PN}-${pkgname}
	if [ -f db-${1}/${PN}_${1}.so ]; then
		exeinto /usr/$(get_libdir)/${PN} ; doexe db-${pkgname}/${PN}_${pkgname}.so
	fi
}

install_clsql_postgresql() {
	install_clsql_pkg postgresql-socket
	install_clsql_pkg postgresql-socket3
	install_clsql_pkg postgresql
}

src_install() {
	common-lisp-install-sources sql/*.lisp tests
	common-lisp-install-asdf ${PN} ${PN}-tests

	common-lisp-install-sources uffi/*.lisp
	common-lisp-install-asdf ${PN}-{uffi,cffi}
	exeinto /usr/$(get_libdir)/${PN} ; doexe uffi/${PN}_uffi.so

	use postgres && install_clsql_postgresql
	for dbtype in mysql odbc sqlite #oracle
	do
		use ${dbtype} && install_clsql_pkg ${dbtype}
	done

	# TODO: figure out the dependencies
	install_clsql_pkg aodbc
	install_clsql_pkg db2

	dodoc BUGS CONTRIBUTORS ChangeLog INSTALL LATEST-TEST-RESULTS NEWS README TODO
	if use doc ; then
		dodoc doc/clsql.pdf
		tar xfz doc/html.tar.gz -C "${T}" || die
		dodoc "${T}"/html/*
		docinto notes && dodoc notes/*
	fi
	use examples && docinto examples && dodoc -r examples/*

	dodir /etc
	cat > "${D}"/etc/clsql-init.lisp <<-EOF
	(clsql:push-library-path #p"/usr/$(get_libdir)/")
	(clsql:push-library-path #p"/usr/$(get_libdir)/clsql/")
	EOF
}
