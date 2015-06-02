module Language.Css.Values.Lengths where


data CssRelativeLength =
    CssEm   Double
  | CssEx   Double
  | CssCh   Double
  | CssRem  Double
  | CssVw   Double
  | CssVh   Double
  | CssVmin Double
  | CssVmax Double
  deriving (Show, Eq)

data CssAbsoluteLength =
    CssCm Double
  | CssMm Double
  | CssIn Double
  | CssPx Double
  | CssPt Double
  | CssPc Double
  deriving (Show, Eq)

type CssLength = Either CssRelativeLength CssAbsoluteLength

type CssPercentage = Double
