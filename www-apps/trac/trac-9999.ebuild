# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-apps/trac/trac-0.11.5.ebuild,v 1.4 2009/09/27 15:41:06 nixnut Exp $

EAPI="3"

inherit distutils webapp git

MY_PV=${PV/_beta/b}
MY_P=Trac-${MY_PV}
S=${WORKDIR}/${MY_P}

DESCRIPTION="Trac is a minimalistic web-based project management, wiki and bug/issue tracking system."
HOMEPAGE="http://trac.edgewall.com/"
LICENSE="trac"

EGIT_REPO_URI="git://github.com/dokipen/trac.git"
EGIT_BRANCH="doki_pen"
EGIT_COMMIT="doki_pen"

IUSE="cgi fastcgi mysql postgres sqlite subversion tracd"

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

# doing so because tools, python packages... overlap
SLOT="0"
WEBAPP_MANUAL_SLOT="yes"

RDEPEND="
	dev-python/setuptools
	>=dev-python/genshi-0.5
	dev-python/pygments
	>=dev-python/docutils-0.3.9
	dev-python/pytz
	cgi? (
		virtual/httpd-cgi
	)
	fastcgi? (
		virtual/httpd-fastcgi
	)
	mysql? (
		>=dev-python/mysql-python-1.2.1
		>=virtual/mysql-4.1
	)
	postgres? (
		>=dev-python/psycopg-2
	)
	sqlite? (
		>=dev-db/sqlite-3.3.4
		|| (
			>=dev-lang/python-2.5[sqlite]
			>=dev-python/pysqlite-2.3.2
		)
	)
	subversion? (
		>=dev-util/subversion-1.4.2[python]
	)
	!www-apps/trac-webadmin
	"
DEPEND="${RDEPEND}"

pkg_setup() {
	webapp_pkg_setup

	if ! use mysql && ! use postgres && ! use sqlite; then
		eerror "You must select at least one database backend, by enabling"
		eerror "at least one of the 'mysql', 'postgres' or 'sqlite' USE flags."
		die "no database backend selected"
	fi

	enewgroup tracd
	enewuser tracd -1 -1 -1 tracd
}

src_install() {
	webapp_src_preinst
	distutils_src_install

	# project environments might go in here
	keepdir /var/lib/trac

	# Use this as the egg-cache for tracd
	dodir /var/lib/trac/egg-cache
	keepdir /var/lib/trac/egg-cache
	fowners tracd:tracd /var/lib/trac/egg-cache

	# documentation
	cp -r contrib "${D}"/usr/share/doc/${P}/

	# tracd init script
	if use tracd ; then
		newconfd "${FILESDIR}"/tracd.confd.3 tracd
		newinitd "${FILESDIR}"/tracd.initd.3 tracd
	fi

	if use cgi; then
		cp cgi-bin/trac.cgi "${D}"/${MY_CGIBINDIR} || die
	fi
	if use fastcgi; then
		cp cgi-bin/trac.fcgi "${D}"/${MY_CGIBINDIR} || die
	fi

	for lang in en; do
		webapp_postinst_txt ${lang} "${FILESDIR}"/postinst-${lang}.txt
		webapp_postupgrade_txt ${lang} "${FILESDIR}"/postupgrade-${lang}.txt
	done

	webapp_src_install
}
