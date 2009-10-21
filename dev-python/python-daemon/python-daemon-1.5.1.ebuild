# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Library to implement a well-behaved Unix daemon process"
HOMEPAGE="http://pypi.python.org/pypi/python-daemon/"
SRC_URI="http://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
  dev-python/setuptools
  test? ( dev-python/minimock )"
RDEPEND=""
RESTRICT_PYTHON_ABIS="3.*"

DOCS="ChangeLog TODO"

src_test() {
	PYTHONPATH=. ${python} setup.py test || die "Failure in
	testsuite"
}

