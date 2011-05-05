# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

inherit gems

USE_RUBY="ruby18 ruby19"

DESCRIPTION="vagrant"
HOMEPAGE="http://vagrantup.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
  >=dev-ruby/git-style-binaries-0.1.10
  dev-ruby/json
  dev-ruby/net-scp
  >=dev-ruby/net-ssh-2.0.19
  >=dev-ruby/tarruby-0.1.5
  dev-ruby/virtualbox
"

DEPEND="${REDEPEND}"

