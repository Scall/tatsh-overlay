# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{6..8} )

inherit distutils-r1

DESCRIPTION="Helper commands to automate updating with Portage."
HOMEPAGE="https://github.com/Tatsh/upkeep"
SRC_URI="https://github.com/Tatsh/upkeep/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	app-portage/gentoolkit
	sys-kernel/dracut
	sys-boot/grub:2"
