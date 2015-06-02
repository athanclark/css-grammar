module Language.Css.Media where

import Data.List.NonEmpty


data CssMediaType =
    CssMediaAll
  | CssMediaBraille
  | CssMediaEmbossed
  | CssMediaHandheld
  | CssMediaPrint
  | CssMediaProjection
  | CssMediaScreen
  | CssMediaSpeech
  | CssMediaTty
  | CssMediaTv
  deriving (Show, Eq)

type CssMediaQueryList = NonEmpty CssMediaQuery

data CssMediaQuery =
    CssMediaQueryOnly CssMediaType [CssMediaExpression]
  | CssMediaQueryNot  CssMediaType [CssMediaExpression]
  | CssMediaQueryExpr (NonEmpty CssMediaExpression)

type CssMediaExpression = (CssMediaFeature, Maybe CssMediaValue)

-- | @min-width@, @max-height@, @color@, etc.
data CssMediaFeature =
    CssMediaWidth
  | CssMediaMinWidth
  | CssMediaMaxWidth
  | CssMediaHeight
  | CssMediaMinHeight
  | CssMediaMaxHeight
  | CssMediaDeviceWidth
  | CssMediaMinDeviceWidth
  | CssMediaMaxDeviceWidth
  | CssMediaDeviceHeight
  | CssMediaMinDeviceHeight
  | CssMediaMaxDeviceHeight
  | CssMediaAspectRatio
  | CssMediaMinAspectRatio
  | CssMediaMaxAspectRatio
  | CssMediaDeviceAspectRatio
  | CssMediaMinDeviceAspectRatio
  | CssMediaMaxDeviceAspectRatio
  | CssMediaColor
  | CssMediaMinColor
  | CssMediaMaxColor
  | CssMediaColorIndex
  | CssMediaMinColorIndex
  | CssMediaMaxColorIndex
  | CssMediaMonochrome
  | CssMediaMinMonochrome
  | CssMediaMaxMonochrome
  | CssMediaResolution
  | CssMediaMinResolution
  | CssMediaMaxResolution
  | CssMediaScan
  | CssMediaGrid

type CssMediaValue = String
