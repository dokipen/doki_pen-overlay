# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit distutils git

DESCRIPTION="Full blog plugin for Trac."
HOMEPAGE="http://trac-hacks.org/wiki/FullBlogPlugin"
EGIT_REPO_URI="git://github.com/dokipen/trac-fullblog-plugin.git"
EGIT_BRANCH="doki_pen"
EGIT_COMMIT="doki_pen"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-lang/python-2.6
	www-apps/trac
"
