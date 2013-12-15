# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.3

EAPI=5
PYTHON_COMPAT=( python3_{2,3} )

inherit distutils-r1 eutils

DESCRIPTION="Sets permissions on Linux automatically by listening to inotify create and modify events"
HOMEPAGE="https://github.com/Tatsh/setpermsdaemon"
SRC_URI="https://pypi.python.org/packages/source/s/setpermsdaemon/${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

RDEPEND="dev-python/osextension"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}] ${RDEPEND}"

DOCS=( README.rst CHANGES.txt LICENSE.txt )

python_install_all() {
	distutils-r1_python_install_all
	doinitd ${FILESDIR}/setpermsd
}
