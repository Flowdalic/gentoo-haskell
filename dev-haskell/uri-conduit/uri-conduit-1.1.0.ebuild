# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Read and write URIs"
HOMEPAGE="http://github.com/snoyberg/xml"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/conduit-1.0*:=[profile?]
		>=dev-haskell/failure-0.1:=[profile?]
		<dev-haskell/failure-0.3:=[profile?]
		=dev-haskell/monad-control-0.3*:=[profile?]
		>=dev-haskell/network-2.2:=[profile?]
		>=dev-haskell/system-fileio-0.3.3:=[profile?]
		<dev-haskell/system-fileio-0.4:=[profile?]
		>=dev-haskell/system-filepath-0.4.3:=[profile?]
		<dev-haskell/system-filepath-0.5:=[profile?]
		>=dev-haskell/text-0.5:=[profile?]
		<dev-haskell/text-1.0:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"