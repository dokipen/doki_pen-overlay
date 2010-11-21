# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
USE_RUBY="ruby18 ree18 ruby19"

inherit ruby-fakegem

DESCRIPTION='Net::SSH::Gateway is a library for programmatically tunneling
connections to servers via a single "gateway" host.'
HOMEPAGE="http://net-ssh.rubyforge.org/gateway"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

