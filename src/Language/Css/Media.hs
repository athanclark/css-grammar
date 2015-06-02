module Language.Css.Media where

import Language.Css.Values
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
    CssMediaQueryOnly CssMediaType [CssMediaFeature]
  | CssMediaQueryNot  CssMediaType [CssMediaFeature]
  | CssMediaQueryExpr (NonEmpty CssMediaFeature)
  deriving (Show, Eq)

data CssMediaFeature =
    CssMediaWidth                CssLength
  | CssMediaMinWidth             CssLength
  | CssMediaMaxWidth             CssLength
  | CssMediaHeight               CssLength
  | CssMediaMinHeight            CssLength
  | CssMediaMaxHeight            CssLength
  | CssMediaDeviceWidth          CssLength
  | CssMediaMinDeviceWidth       CssLength
  | CssMediaMaxDeviceWidth       CssLength
  | CssMediaDeviceHeight         CssLength
  | CssMediaMinDeviceHeight      CssLength
  | CssMediaMaxDeviceHeight      CssLength
  | CssMediaAspectRatio          Double
  | CssMediaOrientation          CssDeviceOrientation
  | CssMediaMinAspectRatio       Double
  | CssMediaMaxAspectRatio       Double
  | CssMediaDeviceAspectRatio    Double
  | CssMediaMinDeviceAspectRatio Double
  | CssMediaMaxDeviceAspectRatio Double
  | CssMediaColor                Integer
  | CssMediaMinColor             Integer
  | CssMediaMaxColor             Integer
  | CssMediaColorIndex           Integer
  | CssMediaMinColorIndex        Integer
  | CssMediaMaxColorIndex        Integer
  | CssMediaMonochrome           Integer
  | CssMediaMinMonochrome        Integer
  | CssMediaMaxMonochrome        Integer
  | CssMediaResolution           CssResolution
  | CssMediaMinResolution        CssResolution
  | CssMediaMaxResolution        CssResolution
  | CssMediaScan                 CssScan
  | CssMediaGrid                 Integer
  deriving (Show, Eq)
