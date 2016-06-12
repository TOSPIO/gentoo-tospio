# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils unpacker

DESCRIPTION="The official release of Netease Cloud Music client"
HOMEPAGE="http://music.163.com/#/download"
SRC_URI="
    i386?    ( http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-2_i386.deb )
    amd64?   ( http://s1.music.126.net/download/pc/netease-cloud-music_0.9.0-2_amd64.deb )
	"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
    media-libs/libcue
"
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_compile() { :; }

src_install() {
    cp -pPR usr/ "${ED}"/
}
