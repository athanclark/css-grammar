module Language.Css.Properties where

import Language.Css.Values
import Language.Css.Colors

import Data.List.NonEmpty


data CssProperty =
    BackgroundAttachment (CssValue CssBGAttachment)
  | BackgroundColor      (CssValue CssColor)
  | BackgroundImage      (CssValue (Maybe CssUrl))
  | BackgroundPosition   (CssValue CssBGPosition)
  | BackgroundRepeat     (CssValue CssRepeat)
  | Background           (CssValue CssBackgroundValue)
  | BorderCollapse       (CssValue CssCollapse)
  | BorderColor          (CssValue [CssColor])
  | BorderSpacing        (CssValue (CssLength, Maybe CssLength))
  | BorderStyle          (CssValue [CssBorderStyle])
  | BorderTop            (CssValue CssBorder)
  | BorderRight          (CssValue CssBorder)
  | BorderBottom         (CssValue CssBorder)
  | BorderLeft           (CssValue CssBorder)
  | BorderTopColor       (CssValue CssColor)
  | BorderRightColor     (CssValue CssColor)
  | BorderBottomColor    (CssValue CssColor)
  | BorderLeftColor      (CssValue CssColor)
  | BorderTopStyle       (CssValue CssBorderStyle)
  | BorderRightStyle     (CssValue CssBorderStyle)
  | BorderBottomStyle    (CssValue CssBorderStyle)
  | BorderLeftStyle      (CssValue CssBorderStyle)
  | BorderTopWidth       (CssValue CssBorderWidth)
  | BorderRightWidth     (CssValue CssBorderWidth)
  | BorderBottomWidth    (CssValue CssBorderWidth)
  | BorderLeftWidth      (CssValue CssBorderWidth)
  | BorderWidth          (CssValue [Either CssBorderWidth CssLength])
  | Border               (CssValue CssBorder)
  | Bottom               (CssValue (Maybe (Either CssLength CssPercentage)))
  | CaptionSide          (CssValue CssSide)
  | Clear                (CssValue CssClear)
  | Clip                 (CssValue CssShape)
  | Color                (CssValue CssColor)
  | Content              (CssValue (Maybe CssContent))
  | CounterIncrement     (CssValue (Maybe (NonEmpty (CssIdentifier, Maybe Integer))))
  | CounterReset         (CssValue (Maybe (NonEmpty (CssIdentifier, Maybe Integer))))
  | Cursor               (CssValue (Maybe CssCursor))
  | Direction            (CssValue CssDirection)
  | Display              (CssValue (Maybe CssDisplay))
  | EmptyCells           (CssValue CssEmptyCells)
  | Float                (CssValue (Maybe CssFloat))
  | FontFamily           (CssValue (NonEmpty (Either String CssGenericFontFamily)))
  | FontSize             (CssValue (Either CssLength CssPercentage))
  | FontStyle            (CssValue (Maybe CssFontStyle))
  | FontVariant          (CssValue (Maybe CssFontVariant))
  | FontWeight           (CssValue (Maybe CssFontWeight))
  | Font                 (CssValue CssFont)
  | Height               (CssValue (Maybe (Either CssLength CssPercentage)))
  | Left                 (CssValue (Maybe (Either CssLength CssPercentage)))
  | LetterSpacing        (CssValue (Maybe CssLength))
  | LineHeight           (CssValue (Maybe (Either CssLength CssPercentage))) -- TODO - number
  | ListStyleImage       (CssValue (Maybe CssUrl))
  | ListStylePosition    (CssValue CssListStylePosition)
  | ListStyleType        (CssValue (Maybe CssListStyleType))
  | ListStyle            (CssValue CssListStyle)
  | MarginRight          (CssValue (Maybe (Either CssLength CssPercentage)))
  | MarginLeft           (CssValue (Maybe (Either CssLength CssPercentage)))
  | MarginTop            (CssValue (Maybe (Either CssLength CssPercentage)))
  | MarginBottom         (CssValue (Maybe (Either CssLength CssPercentage)))
  | Margin               (CssValue [Either CssLength CssPercentage])
  | MaxHeight            (CssValue (Maybe (Either CssLength CssPercentage)))
  | MaxWidth             (CssValue (Maybe (Either CssLength CssPercentage)))
  | MinHeight            (CssValue (Either CssLength CssPercentage))
  | MinWidth             (CssValue (Either CssLength CssPercentage))
  | Opacity              (CssValue Double)
  | Orphans              (CssValue Integer)
  | OutlineColor         (CssValue (Either CssColor CssOutlineColor))
  | OutlineStyle         (CssValue CssBorderStyle)
  | OutlineWidth         (CssValue CssBorderWidth)
  | Outline              (CssValue CssOutline)
  | Overflow             (CssValue (Maybe CssOverflow))
  | PaddingTop           (CssValue (Either CssLength CssPercentage))
  | PaddingRight         (CssValue (Either CssLength CssPercentage))
  | PaddingBottom        (CssValue (Either CssLength CssPercentage))
  | PaddingLeft          (CssValue (Either CssLength CssPercentage))
  | Padding              (CssValue [Either CssLength CssPercentage])
  | PageBreakAfter       (CssValue (Maybe (Either CssBreak CssPageBreak)))
  | PageBreakBefore      (CssValue (Maybe (Either CssBreak CssPageBreak)))
  | PageBreakInside      (CssValue (Maybe CssBreak))
  | Position             (CssValue CssPosition)
  | Quotes               (CssValue (Maybe (NonEmpty (String, String))))
  | Right                (CssValue (Maybe (Either CssLength CssPercentage)))
  | TableLayout          (CssValue (Maybe CssTableLayout))
  | TextAlign            (CssValue CssTextAlign)
  | TextDecoration       (CssValue (Maybe CssTextDecoration))
  | TextIndent           (CssValue (Either CssLength CssPercentage))
  | TextTransform        (CssValue (Maybe CssTextTransform))
  | Top                  (CssValue (Maybe (Either CssLength CssPercentage)))
  | UnicodeBidi          (CssValue CssUnicodeBidi)
  | VerticalAlign        (CssValue (Either CssVerticalAlign (Either CssLength CssPercentage)))
  | Visibility           (CssValue CssVisibility)
  | WhiteSpace           (CssValue CssWhiteSpace)
  | Widows               (CssValue Integer)
  | Width                (CssValue (Maybe (Either CssLength CssPercentage)))
  | WordSpacing          (CssValue (Maybe CssLength))
  | ZIndex               (CssValue (Maybe Integer))
  deriving (Show, Eq)
