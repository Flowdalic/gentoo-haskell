# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Labeled IO Information Flow Control Library"
HOMEPAGE="http://hackage.haskell.org/package/lio"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1.1.0[profile?]
		>=dev-haskell/cereal-0.3.3[profile?]
		<dev-haskell/cereal-0.4[profile?]
		>=dev-haskell/dclabel-0.0.4[profile?]
		<dev-haskell/dclabel-2[profile?]
		>=dev-haskell/mtl-1.1.0.2[profile?]
		<dev-haskell/mtl-3[profile?]
		>=dev-haskell/sha-1.4.1.1[profile?]
		<dev-haskell/sha-2[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		<dev-haskell/time-2[profile?]
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		test? ( dev-haskell/quickcheck
			dev-haskell/test-framework
			dev-haskell/test-framework-quickcheck2
		)
		>=dev-haskell/cabal-1.8"