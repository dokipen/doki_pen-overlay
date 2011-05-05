# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/www-apps/trac/trac-0.11.5.ebuild,v 1.4 2009/09/27 15:41:06 nixnut Exp $

EAPI="3"

inherit distutils subversion

MY_P=Genshi-${PV}
S=${WORKDIR}/${MY_P}

DESCRIPTION="Python toolkit for stream-based generation of output for the web."
HOMEPAGE="http://genshi.edgewall.com/"
LICENSE="BSD"

ESVN_REPO_URI="http://svn.edgewall.org/repos/genshi/trunk"

IUSE="doc examples"

KEYWORDS="~amd64 ~ppc ~ppc64 ~amd64-linux ~x86-linux ~x86-macos ~x86"

# doing so because tools, python packages... overlap
SLOT="0"

RDEPEND="
	dev-python/setuptools
"
DEPEND="${RDEPEND}"

src_install() {
	distutils_src_install

	if use doc ; then
		dodoc doc/*.txt
		dohtml -r doc/*
	fi

	if use examples ; then
		insinto /usr/share/doc/${PF}
		doins -r examples
	fi
}

src_test() {
	"${python}" setup.py test || die "test failed"
}
