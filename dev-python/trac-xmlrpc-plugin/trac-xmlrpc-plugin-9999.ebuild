# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=3

inherit distutils subversion

MY_PN="trac-xmlrpc-plugin"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Remote Procedure Calls for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/XmlRpcPlugin"
ESVN_REPO_URI="http://trac-hacks.org/svn/xmlrpcplugin/trunk"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"

DEPEND="
    >=dev-lang/python-2.6
	>=www-apps/trac-0.11.5
"

S=${WORKDIR}/${MY_P}
