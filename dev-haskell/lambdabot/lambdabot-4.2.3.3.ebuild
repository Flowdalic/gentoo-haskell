# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot is a development tool and advanced IRC bot"
HOMEPAGE="http://haskell.org/haskellwiki/Lambdabot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="eval"

RDEPEND="eval? ( dev-haskell/mueval )
		dev-haskell/arrows:=[profile?]
		>dev-haskell/binary-0.2:=[profile?]
		dev-haskell/data-memocombinators:=[profile?]
		dev-haskell/haskell-src:=[profile?]
		>=dev-haskell/haskell-src-exts-0.4.8:=[profile?]
		dev-haskell/http:=[profile?]
		dev-haskell/iospec:=[profile?]
		dev-haskell/lambdabot-utils:=[profile?]
		>=dev-haskell/logict-0.4.2:=[profile?]
		dev-haskell/monadrandom:=[profile?]
		>dev-haskell/mtl-2:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/numbers:=[profile?]
		>=dev-haskell/oeis-0.2:=[profile?]
		dev-haskell/parsec:=[profile?]
		dev-haskell/random:=[profile?]
		dev-haskell/readline:=[profile?]
		dev-haskell/regex-compat:=[profile?]
		>=dev-haskell/show-0.3:=[profile?]
		dev-haskell/syb:=[profile?]
		dev-haskell/tagsoup:=[profile?]
		dev-haskell/unlambda:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		dev-haskell/vector-space:=[profile?]
		dev-lang/brainfuck:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}/${P}-eval.patch"
	if has_version "<dev-haskell/mtl-2.0.0.0"; then
		epatch "${FILESDIR}/${P}-mtl-1.patch"
	fi
	if has_version ">=dev-haskell/show-0.4.1.1"; then
		sed -e 's@import ShowIO@import ShowFun@' \
			-i "${S}/State/L.hs" \
			-i "${S}/State/Pristine.hs" \
			|| die "Could patch State/L.hs and State/Pristine.hs for show upgrade"
	fi
	epatch "${FILESDIR}/${P}-binutils-2.21.patch"
	epatch "${FILESDIR}/${P}-ghc-7.2.patch"
}

src_configure() {
	haskell-cabal_src_configure $(cabal_flag eval)
}

pkg_postinst() {
	ghc-package_pkg_postinst
	elog "It may be necessary to: mkdir -p ~/.lambdabot/State && cp /usr/share/lambdabot-*/ghc-*/State/* ~/.lambdabot/State"
}