# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils unpacker

DESCRIPTION="HipChat client"
HOMEPAGE="https://www.hipchat.com"
SRC_URI="
    x86?   ( https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client/pool/HipChat4-4.0.1632-Linux.deb )
	amd64? ( https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client/pool/HipChat4-4.0.1632-Linux.deb )"

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
    cp -pPR opt/ "${ED}"/
}
