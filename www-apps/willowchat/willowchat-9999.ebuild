# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

# TODO: add conf.d/init.d stuff

inherit distutils subversion

MY_PN="willowchat"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Willow Chat is an out-of-the-box approach to web-based chat." 
HOMEPAGE="http://www.willowchat.org/"
ESVN_REPO_URI="http://www.willowchat.org/svn/willowchat/trunk/daemon"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
    >=dev-lang/python-2.6
	dev-python/setuptools
	>=net-misc/orbited-0.7
	dev-python/twisted
"

S=${WORKDIR}/${MY_P}
