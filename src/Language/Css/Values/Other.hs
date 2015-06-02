module Language.Css.Values.Other where


data CssAngle =
    CssDeg  Double
  | CssGrad Double
  | CssRad  Double
  | CssTurn Double
  deriving (Show, Eq)

data CssTime =
    CssSec  Double
  | CssMsec Double
  deriving (Show, Eq)

data CssFreq =
    CssHz  Double
  | CssKhz Double
  deriving (Show, Eq)

data CssResolution =
    CssDpi  Double
  | CssDpcm Double
  | CssDppx Double
  deriving (Show, Eq)
