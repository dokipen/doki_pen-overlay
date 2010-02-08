# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit distutils git

DESCRIPTION="Git plugin for Trac."
HOMEPAGE="http://github.com/lentil/trac-git-plugin"
EGIT_REPO_URI="git://github.com/lentil/trac-git-plugin.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-lang/python-2.6
	www-apps/trac
"
