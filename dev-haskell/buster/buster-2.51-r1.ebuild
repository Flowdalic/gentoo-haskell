# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Almost but not quite entirely unlike FRP"
HOMEPAGE="http://vis.renci.org/jeff/buster"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
		dev-haskell/dataenc:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/parsec-3.0.0:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		dev-haskell/cabal"

src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch

	cabal_chdeps \
		'base <=4.1.0.0' 'base >= 4' \
		'extensions:' 'extensions: FlexibleInstances'
}