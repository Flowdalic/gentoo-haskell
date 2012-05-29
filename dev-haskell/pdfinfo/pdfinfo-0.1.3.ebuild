# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

# Building docs was observed to fail, so haddock has been disabled.
CABAL_FEATURES="lib profile hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper around the pdfinfo command."
HOMEPAGE="http://hackage.haskell.org/package/pdfinfo"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-text/poppler
		>=dev-haskell/mtl-1.1[profile?]
		<=dev-haskell/mtl-2.1.1[profile?]
		>=dev-haskell/time-1.1[profile?]
		<=dev-haskell/time-1.4.0.1[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"