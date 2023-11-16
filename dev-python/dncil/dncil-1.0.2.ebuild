# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_1{0,1,2} )

inherit distutils-r1 pypi

DESCRIPTION="Disassemble Common Intermediate Language (CIL) instructions."
HOMEPAGE="https://pypi.org/project/dncil/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

distutils_enable_tests pytest
