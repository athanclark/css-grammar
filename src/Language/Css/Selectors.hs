module Language.Css.Selectors where


data CssCount =
    CssAdd Integer Integer -- ^ @2n+1@
  | CssSub Integer Integer -- ^ @2n-1@
  | CssNum Integer         -- ^ @5@
  | CssRate Integer        -- ^ @5n@
  | CssEven                -- ^ @even@
  | CssOdd                 -- ^ @odd@
  deriving (Show, Eq)

data CssPseudoClass =
    CssPseudoRoot                   -- ^ @:root@
  | CssPseudoNthChild      CssCount -- ^ @:nth-child(n)@
  | CssPseudoNthLastChild  CssCount -- ^ @:nth-last-child(n)@
  | CssPseudoNthOfType     CssCount -- ^ @:nth-of-type(n)@
  | CssPseudoNthLastOfType CssCount -- ^ @:nth-last-of-type(n)@
  | CssPseudoFirstChild             -- ^ @:first-child@
  | CssPseudoLastChild              -- ^ @:last-child@
  | CssPseudoFirstOfType            -- ^ @:first-of-type@
  | CssPseudoLastOfType             -- ^ @:last-of-type@
  | CssPseudoOnlyChild              -- ^ @:only-child@
  | CssPseudoOnlyOfType             -- ^ @:only-of-type@
  | CssPseudoEmpty                  -- ^ @:empty@
  | CssPseudoLink                   -- ^ @:link@
  | CssPseudoVisited                -- ^ @:visited@
  | CssPseudoActive                 -- ^ @:active@
  | CssPseudoHover                  -- ^ @:hover@
  | CssPseudoFocus                  -- ^ @:focus@
  | CssPseudoTarget                 -- ^ @:target@
  | CssPseudoLang            String -- ^ @:lang(l)@
  | CssPseudoEnabled                -- ^ @:enabled@
  | CssPseudoDisabled               -- ^ @:disabled@
  | CssPseudoChecked                -- ^ @:checked@
  | CssPseudoNot  CssSimpleSelector -- ^ @:not(s)@
  deriving (Show, Eq)

data CssPseudoElement =
    CssPseudoFirstLine   -- ^ @::first-line@
  | CssPseudoFirstLetter -- ^ @::first-letter@
  | CssPseudoBefore      -- ^ @::before@
  | CssPseudoAfter       -- ^ @::after@
  deriving (Show, Eq)

data CssAttribute =
    CssAttribute String              -- ^ @[foo]@
  | CssIsAttribute String String     -- ^ @[foo="bar"]@
  | CssSpAttribute String String     -- ^ @[foo~="bar"]@
  | CssHyAttribute String String     -- ^ @[foo|="bar"]@
  | CssBeginsAttribute String String -- ^ @[foo^="bar"]@
  | CssEndsAttribute String String   -- ^ @[foo$="bar"]@
  | CssSubAttribute String String    -- ^ @[foo*="bar"]@
  deriving (Show, Eq)

type CssClass = String
type CssId    = String
type CssNode  = String

-- | A chunk of a selector query
data CssSimpleSelector = CssSimpleSelector
  { nodeSel    :: Maybe CssNode
  , idSel      :: Maybe CssId
  , classesSel :: [CssClass]
  , atrrsSel   :: [CssAttribute]
  } deriving (Show, Eq)

data CssSelector = CssSelector
  { simpleSel :: CssSimpleSelector
  , pseudoSel :: Either CssPseudoClass CssPseudoElement
  } deriving (Show, Eq)

data CssCombinator =
    CssDescendant CssSelector CssSelector -- ^ @E F@
  | CssChild      CssSelector CssSelector -- ^ @E > F@
  | CssAdjacent   CssSelector CssSelector -- ^ @E + F@
  | CssSibling    CssSelector CssSelector -- ^ @E ~ F@
