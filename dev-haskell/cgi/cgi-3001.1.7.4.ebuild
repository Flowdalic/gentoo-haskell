# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A library for writing CGI programs"
HOMEPAGE="http://andersk.mit.edu/haskell/cgi/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 ~ppc ~sparc x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.0
		>=dev-haskell/network-2.0
		>=dev-haskell/parsec-2.0
		>=dev-haskell/xhtml-3000.0.0
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
