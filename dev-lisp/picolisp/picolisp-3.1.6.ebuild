# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils bash-completion-r1

SRC_URI="http://software-lab.de/picoLisp-${PV}.tgz
	amd64? ( http://software-lab.de/x86-64.linux.tgz )"

KEYWORDS="~amd64 ~x86"

DESCRIPTION="A fast and lightweight Lisp interpreter"
HOMEPAGE="http://picolisp.com/"

LICENSE="MIT"
SLOT="0"
IUSE="bash-completion doc examples"

QA_PREBUILT="*"

S="${WORKDIR}/picoLisp"

src_prepare() {

	use amd64 && mv -v ../src64/* src64

	# Consider turning this into a patch...
	sed -i "s#!bin/picolisp lib.l#!/usr/bin/picolisp /usr/lib/picolisp/lib.l#" bin/psh bin/replica bin/watchdog misc/bigtest misc/chat misc/mailing
	sed -i "s#/usr/lib/picolisp/#/usr/lib/picolisp/#" bin/pil
	sed -i "s#@doc/ref#/usr/share/doc/${P}/html/ref#" lib/debug.l
	sed -i "s# test -x /usr/bin/picolisp# false#" src64/mkAsm

	epatch_user
}

src_compile() {
	use amd64 && cd src64 || cd src
	emake
}

src_install() {
	#[ -x /usr/bin/sstrip ] && sstrip bin/picolisp lib/ext lib/ht # These need to be stripped
	dobin bin/picolisp bin/pil
	exeinto /usr/$(get_libdir)/picolisp/bin
	doexe bin/psh bin/replica bin/watchdog
	insinto /usr/$(get_libdir)/picolisp
	use bash-completion && newbashcomp lib/bash_completion "${PN}" # Bash completion is present
	rm -rf lib/bash_completion lib/el
	doins -r *.l *.css lib

	if use amd64; then
		insinto /usr/$(get_libdir)/picolisp/src64
		doins -r src64/*.l src64/lib
		insinto /usr/$(get_libdir)/picolisp/src64/arch
		doins -r src64/arch/x86-64.l
		insinto /usr/$(get_libdir)/picolisp/src64/sys
		doins -r src64/sys/x86-64.linux.*
	fi

	doman man/*/*

	if use doc; then
		dodoc CHANGES CREDITS INSTALL README
		insinto /usr/share/doc/${PF}
		doins doc/quine doc/db doc/travel doc/utf8 doc/vim-tsm
		dohtml doc/*
		insinto /usr/share/doc/${PF}/html
		doins doc/family.l doc/shape.l doc/fun.l doc/hello.l
		if use amd64; then
			doins doc/family64.tgz
			insinto /usr/share/doc/${PF}
			doins -r doc64
		else
			doins doc/family.tgz
			insinto /usr/share/doc/${PF}
			doins doc/structures
		fi
	fi

	if use examples; then
		insinto /usr/share/picolisp
		doins -r app games loc misc opt
		fperms 755 /usr/share/picolisp/misc/bigtest
		fperms 755 /usr/share/picolisp/misc/calc
		fperms 755 /usr/share/picolisp/misc/chat
		fperms 755 /usr/share/picolisp/misc/mailing
		fperms 755 /usr/share/picolisp/games/xchess
	fi
}
