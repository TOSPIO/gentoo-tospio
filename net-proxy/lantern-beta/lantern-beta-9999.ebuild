# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils unpacker

DESCRIPTION="A free desktop application that delivers fast, reliable and secure access to the open Internet for users in censored regions"
HOMEPAGE="https://github.com/getlantern/lantern"
SRC_URI="
    x86?   ( https://s3.amazonaws.com/lantern/lantern-installer-beta-32-bit.deb )
	amd64? ( https://s3.amazonaws.com/lantern/lantern-installer-beta-64-bit.deb )"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_compile() { :; }

src_install() {
    cp -pPR usr/ "${ED}"/
}
