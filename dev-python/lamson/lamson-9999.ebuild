# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit distutils bzr

MY_PN="lamson"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Lamson is a pure-Python smtp server."
HOMEPAGE="http://lamson.org/"
EBZR_REPO_URI="lp:lamson"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    <dev-lang/python-3
	>=dev-lang/python-2.4
	dev-python/jinja2
	dev-python/chardet
	test? ( dev-python/mock )
	dev-python/nose
	dev-python/python-daemon
"

S=${WORKDIR}/${MY_P}
