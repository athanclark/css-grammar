module Language.Css.Colors where


import Data.Word

-- | Datatype representing @0123456789abcdef@
data CssHex =
    Hzero
  | Hone
  | Htwo
  | Hthree
  | Hfour
  | Hfive
  | Hsix
  | Hseven
  | Height
  | Hnine
  | Ha
  | Hb
  | Hc
  | Hd
  | He
  | Hf
  deriving (Show, Eq)

data CssColor =
    CssHex3 CssHex CssHex CssHex
  | CssHex6 CssHex CssHex CssHex CssHex CssHex CssHex
  | CssRgb Word8 Word8 Word8
  | CssRgba Word8 Word8 Word8 Double
  | CssRgbPercent Double Double Double
  | CssRgbaPercent Double Double Double Double
  | CssHsl Integer Double Double
  | CssHsla Integer Double Double Double
  | CssTransparent
  | CssCurrentColor
  | CssKeyword (Either CssMainColors CssExtendedColors)
  deriving (Show, Eq)

data CssMainColors =
    Aqua
  | Black
  | Blue
  | Fuchsia
  | Green
  | Gray
  | Lime
  | Maroon
  | Navy
  | Olive
  | Purple
  | Red
  | Silver
  | Teal
  | White
  | Yellow
  deriving (Show, Eq)

data CssExtendedColors =
    Aliceblue
  | Antiquewhite
  | Aquamarine
  | Azure
  | Beige
  | Bisque
  | Blanchedalmond
  | Blueviolet
  | Brown
  | Burlywood
  | Cadetblue
  | Chartreuse
  | Chocolate
  | Coral
  | Cornflowerblue
  | Cornsilk
  | Crimson
  | Cyan
  | Darkblue
  | Darkcyan
  | Darkgoldenrod
  | Darkgray
  | Darkgreen
  | Darkgrey
  | Darkkhaki
  | Darkmagenta
  | Darkolivegreen
  | Darkorange
  | Darkorchid
  | Darkred
  | Darksalmon
  | Darkseagreen
  | Darkslateblue
  | Darkslategray
  | Darkslategrey
  | Darkturquoise
  | Darkviolet
  | Deeppink
  | Deepskyblue
  | Dimgray
  | Dimgrey
  | Dodgerblue
  | Firebrick
  | Floralwhite
  | Forestgreen
  | Gainsboro
  | Ghostwhite
  | Gold
  | Goldenrod
  | Greenyellow
  | Grey
  | Honeydew
  | Hotpink
  | Indianred
  | Indigo
  | Ivory
  | Khaki
  | Lavender
  | Lavenderblush
  | Lawngreen
  | Lemonchiffon
  | Lightblue
  | Lightcoral
  | Lightcyan
  | Lightgoldenrodyellow
  | Lightgray
  | Lightgreen
  | Lightgrey
  | Lightpink
  | Lightsalmon
  | Lightseagreen
  | Lightskyblue
  | Lightslategray
  | Lightslategrey
  | Lightsteelblue
  | Lightyellow
  | Limegreen
  | Linen
  | Magenta
  | Mediumaquamarine
  | Mediumblue
  | Mediumorchid
  | Mediumpurple
  | Mediumseagreen
  | Mediumslateblue
  | Mediumspringgreen
  | Mediumturquoise
  | Mediumvioletred
  | Midnightblue
  | Mintcream
  | Mistyrose
  | Moccasin
  | Navajowhite
  | Oldlace
  | Olivedrab
  | Orange
  | Orangered
  | Orchid
  | Palegoldenrod
  | Palegreen
  | Paleturquoise
  | Palevioletred
  | Papayawhip
  | Peachpuff
  | Peru
  | Pink
  | Plum
  | Powderblue
  | Rosybrown
  | Royalblue
  | Saddlebrown
  | Salmon
  | Sandybrown
  | Seagreen
  | Seashell
  | Sienna
  | Skyblue
  | Slateblue
  | Slategray
  | Slategrey
  | Snow
  | Springgreen
  | Steelblue
  | Tan
  | Thistle
  | Tomato
  | Turquoise
  | Violet
  | Wheat
  | Whitesmoke
  | Yellowgreen
  deriving (Show, Eq)
