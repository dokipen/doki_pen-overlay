# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=3

inherit distutils 

MY_PN="lockfile"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Platform-independent file locking module."
HOMEPAGE="http://pypi.python.org/pypi/lockfile"
SRC_URI="http://smontanaro.dyndns.org/python/lockfile-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-lang/python-2.4
"

S=${WORKDIR}/${MY_P}
