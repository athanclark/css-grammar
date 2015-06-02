module Language.Css.AtRules where

import Language.Css.Media


type CssCharset = String

data CssImport = CssImport String [CssMediaType]
  deriving (Show, Eq)
