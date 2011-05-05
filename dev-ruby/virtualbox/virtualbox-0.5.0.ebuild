# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

inherit gems

USE_RUBY="ruby18 ruby19"

DESCRIPTION="virtualbox"
HOMEPAGE="http://github.com/mitchellh/virtualbox"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
  >=dev-ruby/nokogiri-1.4.1
"
DEPEND="${RDEPEND}"
