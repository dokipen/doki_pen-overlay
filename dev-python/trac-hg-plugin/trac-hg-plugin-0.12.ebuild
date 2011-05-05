# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=3

inherit distutils git

DESCRIPTION="Mercurial plugin for Trac."
HOMEPAGE="http://github.com/dokipen/trac-hgplugin"
EGIT_REPO_URI="git://github.com/dokipen/trac-hg-plugin.git"
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
