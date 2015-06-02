module Language.Css.Values
  ( module X
  , CssBackgroundValue (..)
  , CssBGAttachment (..)
  , CssBGPosition (..)
  , CssBGPositionFloatX (..)
  , CssBGPositionFloatY (..)
  , CssBGPositionValue (..)
  , CssBorder (..)
  , CssBorderStyle (..)
  , CssBorderWidth (..)
  , CssBreak (..)
  , CssClear (..)
  , CssCollapse (..)
  , CssContent (..)
  , CssCursor (..)
  , CssDirection (..)
  , CssDisplay (..)
  , CssEmptyCells (..)
  , CssFloat (..)
  , CssFont (..)
  , CssFontStyle (..)
  , CssFontVariant (..)
  , CssFontWeight (..)
  , CssGenericFontFamily (..)
  , CssIdentifier
  , CssListStyle (..)
  , CssListStylePosition (..)
  , CssListStyleType (..)
  , CssOutline (..)
  , CssOutlineColor (..)
  , CssOverflow (..)
  , CssPageBreak (..)
  , CssPosition (..)
  , CssRepeat (..)
  , CssShape (..)
  , CssSide (..)
  , CssTableLayout (..)
  , CssTextAlign (..)
  , CssTextDecoration (..)
  , CssTextTransform (..)
  , CssUnicodeBidi (..)
  , CssValue (..)
  , CssVerticalAlign (..)
  , CssVisibility (..)
  , CssWhiteSpace (..)
  ) where

import Language.Css.Values.Lengths as X
import Language.Css.Values.Other   as X
import Language.Css.Values.Urls    as X
import Language.Css.Colors

import Data.List.NonEmpty


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

data CssBorderStyle =
    CssBorderHidden
  | CssBorderDotted
  | CssBorderDashed
  | CssBorderSolid
  | CssBorderDouble
  | CssBorderGroove
  | CssBorderRidge
  | CssBorderInset
  | CssBorderOutset
  deriving (Show, Eq)

data CssBorderWidth =
    CssBorderThin
  | CssBorderMedium
  | CssBorderThick
  deriving (Show, Eq)

data CssBorder = CssBorder
  (Maybe CssBorderStyle)
  (Maybe CssBorderWidth)
  (Maybe CssColor)
  deriving (Show, Eq)

data CssShape = CssShape
  { shapeLeft   :: Maybe CssLength
  , shapeRight  :: Maybe CssLength
  , shapeTop    :: Maybe CssLength
  , shapeBottom :: Maybe CssLength
  } deriving (Show, Eq)

data CssContentChunk =
    CssContentString String
  | CssContentUrl CssUrl
  | CssContentCounter CssCounter
  | CssContentAttrIdentifier CssIdentifier
  | CssContentOpenQuote
  | CssContentCloseQuote
  | CssContentNoOpenQuote
  | CssContentNoCloseQuote
  deriving (Show, Eq)

data CssContent =
    CssContentNormal
  | CssContent [CssContentChunk]
  deriving (Show, Eq)

type CssCounter = String

type CssIdentifier = String

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

data CssGenericFontFamily =
    CssFontSerif
  | CssFontSansSerif
  | CssFontCursive
  | CssFontFantasy
  | CssFontMonospace
  deriving (Show, Eq)

data CssFontSpec = CssFontSpec
  { fontStyle   :: Maybe CssFontStyle
  , fontVariant :: Maybe CssFontVariant
  , fontWeight  :: Maybe CssFontWeight
  , fontSize    :: CssLength
  , lineHeight  :: Maybe CssLength
  , fontFamily  :: NonEmpty CssGenericFontFamily
  } deriving (Show, Eq)

data CssFont =
    CssFont CssFontSpec
  | CssFontCaption
  | CssFontIcon
  | CssFontMenu
  | CssFontMessageBox
  | CssSmallCaption
  | CssStatusBar
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

data CssOutline = CssOutline
  (Maybe (Either CssOutlineColor CssColor))
  (Maybe CssBorderStyle)
  (Maybe CssBorderWidth)
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
