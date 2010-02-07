# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit distutils git

MY_PN="whoosh"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Whoosh is a fast, pure-Python indexing and search library."
HOMEPAGE="http://whoosh.ca/"
EGIT_REPO_URI="git://github.com/dokipen/whoosh.git"
EGIT_BRANCH="trunk"
EGIT_COMMIT="trunk"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-lang/python-2.6
"

S=${WORKDIR}/${MY_P}
