module Language.Css.AtRules where

import Language.Css.Media
import Language.Css.Decl
import Language.Css.Values

type CssCharset = String

data CssImport = CssImport String [CssMediaType]
  deriving (Show, Eq)

-- | Only allow @margin@-like properties
data CssPage = CssPage (Maybe CssPagePseudo) [Either CssRule CssPageProperties]
  deriving (Show, Eq)

data CssPagePseudo =
    CssPageFirst
  | CssPageLeft
  | CssPageRight
  deriving (Show, Eq)

data CssPageProperties =
    CssPageBreakBefore (CssValue (Maybe (Either CssPageBreakValue CssPageBreakValueExt)))
  | CssPageBreakAfter  (CssValue (Maybe (Either CssPageBreakValue CssPageBreakValueExt)))
  | CssPageBreakInside (CssValue (Maybe CssPageBreakValue))
  | CssPageOrphans     (CssValue Integer)
  | CssPageWindows     (CssValue Integer)
  deriving (Show, Eq)

data CssPageBreakValue = CssPageBreakAvoid
  deriving (Show, Eq)

data CssPageBreakValueExt =
    CssPageBreakAlways
  | CssPageBreakLeft
  | CssPageBreakRight
  deriving (Show, Eq)
