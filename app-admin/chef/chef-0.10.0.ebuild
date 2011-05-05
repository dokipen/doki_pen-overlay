# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/chef/chef-0.9.12.ebuild,v 1.2 2011/01/07 17:16:31 hollow Exp $

EAPI=3

inherit gems

USE_RUBY="ruby18 ruby19"

DESCRIPTION="Chef is a systems integration framework"
HOMEPAGE="http://wiki.opscode.com/display/chef"
SRC_URI="https://rubygems.org/downloads/chef-0.10.0.gem"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-ruby/bunny-0.6.0
	dev-ruby/erubis
	dev-ruby/extlib
	dev-ruby/highline
	>=dev-ruby/json-1.4.4
	<dev-ruby/json-1.4.7
	>=dev-ruby/mixlib-authentication-1.1.0
	>=dev-ruby/mixlib-cli-1.1.0
	>=dev-ruby/mixlib-config-1.1.2
	>=dev-ruby/mixlib-log-1.3.0
	dev-ruby/moneta
	>=dev-ruby/ohai-0.5.7
	>=dev-ruby/rest-client-1.0.4
	<dev-ruby/rest-client-1.7.0
	dev-ruby/ruby-shadow
	dev-ruby/uuidtools
	>=dev-ruby/treetop-1.4.9"
DEPEND="${RDEPEND}"
