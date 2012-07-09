# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.17.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An interactive terminal user interface library for Vty"
HOMEPAGE="http://jtdaugherty.github.com/vty-ui/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/quickcheck-2.4[profile?]
		<dev-haskell/quickcheck-2.6[profile?]
		=dev-haskell/regex-base-0.93*[profile?]
		>=dev-haskell/stm-2.1[profile?] <dev-haskell/stm-2.5[profile?]
		>=dev-haskell/time-1.1[profile?] <dev-haskell/time-1.5[profile?]
		>=dev-haskell/vty-4.6[profile?] <dev-haskell/vty-4.8[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@containers >= 0.2 && < 0.5@containers >= 0.2 \&\& < 0.6@' \
		-e 's@mtl >= 2.0 && < 2.1@mtl >= 2.0 \&\& < 2.2@g' \
		-e 's@stm >= 2.1 && < 2.3@stm >= 2.1 \&\& < 2.5@g' \
		-e 's@QuickCheck >= 2.4 && < 2.5@QuickCheck >= 2.4 \&\& < 2.6@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}