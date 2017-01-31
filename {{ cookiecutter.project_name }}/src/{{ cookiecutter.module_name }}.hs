-- | Serve the API as an HTTP server.
module {{ cookiecutter.module_name }}
  ( Config(..)
  , app
  ) where

import Protolude

-- | Configuration for the application.
data Config = Config deriving (Eq, Show)

-- | Where the application goes.
app :: ReaderT Config IO ()
app = notImplemented
