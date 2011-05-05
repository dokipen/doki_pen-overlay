# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=3

inherit distutils git

DESCRIPTION="Irclogs is a trac plugin to view irclogs within trac."
HOMEPAGE="http://trac-hacks.org/wiki/IrcLogsPlugin"
EGIT_REPO_URI="http://github.com/dokipen/trac-irclogs-plugin.git"
EGIT_BRANCH="trunk"
EGIT_COMMIT="trunk"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE="search"

DEPEND="
    >=dev-lang/python-2.6
	dev-python/pytz
	>=www-apps/trac-0.11.5
	search? (
		dev-python/whoosh
	)
"

S=${WORKDIR}/${MY_P}
