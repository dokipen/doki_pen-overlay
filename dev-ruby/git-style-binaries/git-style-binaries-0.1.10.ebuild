# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit gems

USE_RUBY="ruby18 ruby19"

DESCRIPTION="git-style-binaries"
HOMEPAGE="http://github.com/jashmenn/git-style-binaries"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
  >=dev-ruby/trollop-1.15
  >=dev-ruby/shoulda-2.10.3
"

DEPEND="${REDEPEND}"

