# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
MPV_REQ_USE="lua"
USE_MPV="rdepend"
inherit mpv-plugin

DESCRIPTION="Synchronize lyrics with mpv"
HOMEPAGE="https://git.sr.ht/~guidocella/mpv-lrc"
SHA="ffdfd332e02b209e9c6d7e092df73f44d62ce3de"
SRC_URI="https://git.sr.ht/~guidocella/mpv-lrc/archive/${SHA}.tar.gz -> ${PN}-${SHA:0:7}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc64"

MPV_PLUGIN_FILES=(
	"${PN:4}.lua"
)

S="${WORKDIR}/${PN}-${SHA}"

src_install() {
	mpv-plugin_src_install
	insinto /etc/mpv/script-opts
	doins "script-opts/${PN:4}.conf"
}
