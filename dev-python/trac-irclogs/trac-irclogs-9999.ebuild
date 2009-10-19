# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit distutils subversion

MY_PN="irclogs"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Irclogs is a trac plugin to view irclogs within trac."
HOMEPAGE="http://trac-hacks.org/wiki/IrcLogsPlugin"
ESVN_REPO_URI="http://trac-hacks.org/svn/irclogsplugin/parsing_refactor"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-python/python-2.6
	dev-python/pytz
	>=www-apps/trac-0.11.5
	search? dev-python/whoosh
"

S=${WORKDIR}/${MY_P}
