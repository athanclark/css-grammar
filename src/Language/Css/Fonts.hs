module Language.Css.Fonts where

import Data.List.NonEmpty
import Langauge.Css.Values


data CssFontFormat =
    CssWoff
  | CssTrueType
  | CssOpenType
  | CssEmbeddedOpenType
  | CssSvg
  deriving (Show, Eq)

data CssFontFace = CssFontFace
  { fontFamily     :: String
  , fontSrc        :: NonEmpty (Either String (Url, Maybe CssFontFormat))
  , fontFaceWeight :: Maybe CssFontWeight
  , fontStretch    :: Maybe CssFontStretch
  , fontUniRange   :: [String]
  } deriving (Show, Eq)

data CssFontStretch =
    CssFontStretchNormal
  | CssFontStretchUltraCondensed
  | CssFontStretchExtraCondensed
  | CssFontStretchCondensed
  | CssFontStretchSemiCondensed
  | CssFontStretchSemiExpanded
  | CssFontStretchExpanded
  | CssFontStretchExtraExpanded
  | CssFontStretchUltraExpanded
  deriving (Show, Eq)
