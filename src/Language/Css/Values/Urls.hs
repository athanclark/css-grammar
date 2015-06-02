module Language.Css.Values.Urls where


import Text.URI

type CssPlainUrl = URI

newtype CssUrl = CssUrl {fromCssUrl :: CssPlainUrl}
  deriving (Show, Eq)
