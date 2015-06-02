module Language.Css.Namespaces where


data CssNamespace = CssNamespace
  { qualifierName :: Maybe String
  , locationName  :: String
  } deriving (Show, Eq)
