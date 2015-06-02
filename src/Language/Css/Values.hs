module Language.Css.Values
  ( module X
  , CssValue (..)
  , CssBGAttachment (..)
  , CssBGPositionFloatX (..)
  , CssBGPositionFloatY (..)
  , CssBGPositionValue (..)
  , CssBGPosition (..)
  , CssRepeat (..)
  , CssCollapse (..)
  , CssBackgroundValue (..)
  , CssSide (..)
  , CssClear (..)
  , CssCursor (..)
  , CssDirection (..)
  , CssDisplay (..)
  , CssEmptyCells (..)
  , CssFloat (..)
  , CssFontStyle (..)
  , CssFontVariant (..)
  , CssFontWeight (..)
  , CssListStylePosition (..)
  , CssListStyleType (..)
  , CssListStyle (..)
  , CssOutlineColor (..)
  , CssOverflow (..)
  , CssBreak (..)
  , CssPageBreak (..)
  , CssBreak (..)
  , CssPageBreak (..)
  , CssBreak (..)
  , CssPosition (..)
  , CssTableLayout (..)
  , CssTextAlign (..)
  , CssTextDecoration (..)
  , CssTextTransform (..)
  , CssUnicodeBidi (..)
  , CssVerticalAlign (..)
  , CssVisibility (..)
  , CssWhiteSpace (..)
  ) where

import Language.Css.Values.Lengths as X
import Language.Css.Values.Other   as X
import Language.Css.Values.Urls    as X
import Language.Css.Colors

data CssValue a =
    CssValue a
  | CssInherit
  | CssInitial
  deriving (Show, Eq)

data CssBGAttachment =
    CssBGScroll
  | CssBGFixed
  deriving (Show, Eq)

data CssBGPositionFloatX =
    CssLeft
  | CssRight
  | CssCenterX
  deriving (Show, Eq)

data CssBGPositionFloatY =
    CssTop
  | CssBottom
  | CssCenterY
  deriving (Show, Eq)

data CssBGPositionValue a =
    CssBGPositionValue a
  | CssBGPositionPercentage CssPercentage
  | CssBGPositionLength CssLength
  deriving (Show, Eq)

data CssBGPosition =
    CssBGPositionAbsolute (CssBGPositionValue CssBGPositionFloatX)
                          (CssBGPositionValue CssBGPositionFloatY)
  | CssBGPositionRelative (Maybe (CssBGPositionValue CssBGPositionFloatX))
                          (Maybe (CssBGPositionValue CssBGPositionFloatY))
    deriving (Show, Eq)

data CssBackgroundValue = CssBackgroundValue
  (Maybe CssBGAttachment)
  (Maybe CssColor)
  (Maybe (Maybe CssUrl))
  (Maybe CssBGPosition)
  (Maybe CssRepeat)
  deriving (Show, Eq)

data CssRepeat =
    CssRepeat
  | CssRepeatX
  | CssRepeatY
  | CssNoRepeat
  deriving (Show, Eq)

data CssCollapse =
    CssCollapse
  | CssSeparate
  deriving (Show, Eq)

data CssSide = CssSideLeft | CssSideRight
  deriving (Show, Eq)

data CssClear = CssClearLeft | CssClearRight | CssClearBoth
  deriving (Show, Eq)

data CssCursor =
    CssCrossHair
  | CssCursorDefualt
  | CssPointer
  | CssMove
  | CssEResize
  | CssNEResize
  | CssNWResize
  | CssNResize
  | CssSEResize
  | CssSWResize
  | CssSResize
  | CssWResize
  | CssCursorText
  | CssWait
  | CssHelp
  | CssProgress
  deriving (Show, Eq)

data CssDirection = CssLTR | CssRTL
  deriving (Show, Eq)

data CssDisplay =
    CssInline
  | CssBlock
  | CssListItem
  | CssInlineBlock
  | CssTable
  | CssInlineTable
  | CssTableRowGroup
  | CssTableHeaderGroup
  | CssTableFooterGroup
  | CssTableRow
  | CssTableColumnGroup
  | CssTableColumn
  | CssTableCell
  | CssTableCaption
  deriving (Show, Eq)

data CssEmptyCells = CssCellShow | CssCellHide
  deriving (Show, Eq)

data CssFloat = CssFloatLeft | CssFloatRight
  deriving (Show, Eq)

data CssFontStyle = CssItalic | CssOblique
  deriving (Show, Eq)

data CssFontVariant = CssSmallCaps
  deriving (Show, Eq)

data CssFontWeight =
    CssBold
  | CssBolder
  | CssLighter
  | CssFontWeight100
  | CssFontWeight200
  | CssFontWeight300
  | CssFontWeight400
  | CssFontWeight500
  | CssFontWeight600
  | CssFontWeight700
  | CssFontWeight800
  | CssFontWeight900
  deriving (Show, Eq)

data CssListStylePosition =
    CssListStyleInside
  | CssListStyleOutside
  deriving (Show, Eq)

data CssListStyleType =
    CssDisc
  | CssCircle
  | CssSquare
  | CssDecimal
  | CssDecimalLeadingZero
  | CssLowerRoman
  | CssUpperRoman
  | CssLowerGreek
  | CssLowerLatin
  | CssUpperLatin
  | CssArmenian
  | CssGeorgian
  | CssLowerAlpha
  | CssUpperAlpha
  deriving (Show, Eq)

data CssListStyle = CssListStyle
  (Maybe CssListStyleType)
  (Maybe CssListStylePosition)
  (Maybe CssUrl)
  deriving (Show, Eq)

data CssOutlineColor = CssInvert
  deriving (Show, Eq)

data CssOverflow =
    CssVisible
  | CssHidden
  | CssScroll
  deriving (Show, Eq)

data CssBreak = CssAvoid
  deriving (Show, Eq)

data CssPageBreak = CssPageAlways | CssPageLeft | CssPageRight
  deriving (Show, Eq)

data CssPosition =
    CssStatic
  | CssRelative
  | CssAbsolute
  | CssFixed
  deriving (Show, Eq)

data CssTableLayout = CssTableFixed
  deriving (Show, Eq)

data CssTextAlign =
    CssTextLeft
  | CssTextRight
  | CssTextCenter
  | CssTextJustify
  deriving (Show, Eq)

data CssTextUnderline = CssTextUnderline
  deriving (Show, Eq)

data CssTextOverline = CssTextOverline
  deriving (Show, Eq)

data CssTextLineThrough = CssTextLineThrough
  deriving (Show, Eq)

data CssTextBlink = CssTextBlink
  deriving (Show, Eq)

data CssTextDecoration = CssTextDecoration
  (Maybe CssTextUnderline)
  (Maybe CssTextOverline)
  (Maybe CssTextLineThrough)
  (Maybe CssTextBlink)
  deriving (Show, Eq)

data CssTextTransform =
    CssTextCapitalize
  | CssTextUppercase
  | CssTextLowercase
  deriving (Show, Eq)

data CssUnicodeBidi =
    CssUniNormal
  | CssUniEmbed
  | CssBidiOverride
  deriving (Show, Eq)

data CssVerticalAlign =
    CssVBaseline
  | CssVSub
  | CssVSuper
  | CssVTop
  | CssVTextTop
  | CssVMiddle
  | CssVBottom
  | CssVTextBottom
  deriving (Show, Eq)

data CssVisibility =
    CssVisVisible
  | CssVisHidden
  | CssVisCollapse
  deriving (Show, Eq)

data CssWhiteSpace =
    CssNormal
  | CssPre
  | CssNowrap
  | CssPreWrap
  | CssPreLine
  deriving (Show, Eq)
