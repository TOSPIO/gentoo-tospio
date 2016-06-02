# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils unpacker

DESCRIPTION="An open-source mail client built on the modern web with Electron, React and Flux."
HOMEPAGE="https://nylas.com/N1/"
SRC_URI="
    amd64?   ( https://edgehill.s3-us-west-2.amazonaws.com/0.4.85cf726/linux/x64/N1.deb )
	"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_compile() { :; }

src_install() {
    cp -pPR usr/ "${ED}"/
}
