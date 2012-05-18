# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="C/CUDA/OpenCL quasiquoting library."
HOMEPAGE="http://www.eecs.harvard.edu/~mainland/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/exception-mtl-0.3*[profile?]
		=dev-haskell/exception-transformers-0.3*[profile?]
		>=dev-haskell/haskell-src-meta-0.4[profile?]
		<dev-haskell/haskell-src-meta-0.6[profile?]
		=dev-haskell/mainland-pretty-0.1*[profile?]
		>=dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-3[profile?]
		=dev-haskell/srcloc-0.1*[profile?]
		=dev-haskell/syb-0.3*[profile?]
		=dev-haskell/symbol-0.1*[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hunit[profile?]
		)
		"

src_prepare() {
	cp -pR "${FILESDIR}/${PN}-0.3.1.1/tests" "${S}/tests" \
		|| die "Could not copy missing tests"
	sed -e 's@bytestring >=0.9 && <0.10@bytestring >=0.9 \&\& <0.11@' \
		-e 's@containers >=0.4 && <0.5@containers >=0.4 \&\& <0.6@' \
		-e 's@template-haskell >=2.7 && <2.8@template-haskell >=2.6 \&\& <2.8@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
