module Language.Css.Namespaces where


type CssQualifierName = String

data CssNamespace = CssNamespace
  { qualifierName :: Maybe CssQualifierName
  , locationName  :: String
  } deriving (Show, Eq)
