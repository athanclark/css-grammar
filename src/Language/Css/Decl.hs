module Language.Css.Decl where

import Language.Css.Selectors
import Language.Css.Properties


data CssRule = CssRule
  { rule :: CssProperty
  , isImportant :: Bool
  } deriving (Show, Eq)

data CssDecl = CssDecl
  { declSelector :: CssCombinator
  , declRules    :: [CssRule]
  } deriving (Show, Eq)
