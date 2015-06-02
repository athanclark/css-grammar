module Language.Css.Properties where

import Language.Css.Values
import Language.Css.Colors


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
  | BorderStyle  -- TODO
  | BorderTop    -- TODO
  | BorderRight  -- TODO
  | BorderBottom -- TODO
  | BorderLeft   -- TODO
  | BorderTopColor    (CssValue CssColor)
  | BorderRightColor  (CssValue CssColor)
  | BorderBottomColor (CssValue CssColor)
  | BorderLeftColor   (CssValue CssColor)
  | BorderTopStyle    -- TODO
  | BorderRightStyle  -- TODO
  | BorderBottomStyle -- TODO
  | BorderLeftStyle   -- TODO
  | BorderTopWidth    -- TODO
  | BorderRightWidth  -- TODO
  | BorderBottomWidth -- TODO
  | BorderLeftWidth   -- TODO
  | BorderWidth       -- TODO
  | Border            -- TODO
  | Bottom            (CssValue (Maybe (Either CssLength CssPercentage)))
  | CaptionSide       (CssValue CssSide)
  | Clear             (CssValue CssClear)
  | Clip              -- TODO
  | Color             (CssValue CssColor)
  | Content           -- TODO
  | CounterIncrement  -- TODO
  | CounterReset      -- TODO
  | Cursor            (CssValue (Maybe CssCursor))
  | Direction         (CssValue CssDirection)
  | Display           (CssValue (Maybe CssDisplay))
  | EmptyCells        (CssValue CssEmptyCells)
  | Float             (CssValue (Maybe CssFloat))
  | FontFamily        -- TODO
  | FontSize          (CssValue (Either CssLength CssPercentage))
  | FontStyle         (CssValue (Maybe CssFontStyle))
  | FontVariant       (CssValue (Maybe CssFontVariant))
  | FontWeight        (CssValue (Maybe CssFontWeight))
  | Font              -- TODO
  | Height            (CssValue (Maybe (Either CssLength CssPercentage)))
  | Left              (CssValue (Maybe (Either CssLength CssPercentage)))
  | LetterSpacing     (CssValue (Maybe CssLength))
  | LineHeight        (CssValue (Maybe (Either CssLength CssPercentage))) -- TODO - number
  | ListStyleImage    (CssValue (Maybe CssUrl))
  | ListStylePosition (CssValue CssListStylePosition)
  | ListStyleType     (CssValue (Maybe CssListStyleType))
  | ListStyle         (CssValue CssListStyle)
  | MarginRight       -- TODO
  | MarginLeft        -- TODO
  | MarginTop         -- TODO
  | MarginBottom      -- TODO
  | Margin            -- TODO
  | MaxHeight         (CssValue (Maybe (Either CssLength CssPercentage)))
  | MaxWidth          (CssValue (Maybe (Either CssLength CssPercentage)))
  | MinHeight         (CssValue (Either CssLength CssPercentage))
  | MinWidth          (CssValue (Either CssLength CssPercentage))
  | Opacity           (CssValue Double)
  | Orphans           (CssValue Integer)
  | OutlineColor      (CssValue (Either CssColor CssOutlineColor))
  | OutlineStyle      -- TODO
  | OutlineWidth      -- TODO
  | Outline           -- TODO
  | Overflow          (CssValue (Maybe CssOverflow))
  | PaddingTop        -- TODO
  | PaddingRight      -- TODO
  | PaddingBottom     -- TODO
  | PaddingLeft       -- TODO
  | Padding           -- TODO
  | PageBreakAfter    (CssValue (Maybe (Either CssBreak CssPageBreak)))
  | PageBreakBefore   (CssValue (Maybe (Either CssBreak CssPageBreak)))
  | PageBreakInside   (CssValue (Maybe CssBreak))
  | Position          (CssValue CssPosition)
  | Quotes            -- TODO
  | Right             (CssValue (Maybe (Either CssLength CssPercentage)))
  | TableLayout       (CssValue (Maybe CssTableLayout))
  | TextAlign         (CssValue CssTextAlign)
  | TextDecoration    (CssValue (Maybe CssTextDecoration))
  | TextIndent        (CssValue (Either CssLength CssPercentage))
  | TextTransform     (CssValue (Maybe CssTextTransform))
  | Top               (CssValue (Maybe (Either CssLength CssPercentage)))
  | UnicodeBidi       (CssValue CssUnicodeBidi)
  | VerticalAlign     (CssValue (Either CssVerticalAlign (Either CssLength CssPercentage)))
  | Visibility        (CssValue CssVisibility)
  | WhiteSpace        (CssValue CssWhiteSpace)
  | Widows            (CssValue Integer)
  | Width             (CssValue (Maybe (Either CssLength CssPercentage)))
  | WordSpacing       (CssValue (Maybe CssLength))
  | ZIndex            (CssValue (Maybe Integer))
  deriving (Show, Eq)
