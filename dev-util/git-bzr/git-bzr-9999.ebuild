# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit git

DESCRIPTION="Git bzr bidirectional thing"
EGIT_REPO_URI="git://github.com/buriy/git-bzr.git"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    dev-lang/ruby
	dev-util/git
	dev-util/bzr-fastimport
"

src_install() {
	exeinto "/usr/bin"
	doexe "${S}/git-bzr"
}
