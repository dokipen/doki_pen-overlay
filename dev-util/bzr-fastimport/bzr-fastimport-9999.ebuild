# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=3

inherit distutils bzr

MY_PN="bzr-fastimport"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Backend for fast Bazaar data importers"
EBZR_REPO_URI="lp:bzr-fastimport"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="
	>=dev-lang/python-2.4
	dev-util/bzr
"

S=${WORKDIR}/${MY_P}
