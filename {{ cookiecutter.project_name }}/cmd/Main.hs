-- | Launch {{ cookiecutter.project_name }} server.
module Main
  ( main
  ) where

import Protolude

import Options.Applicative
       (ParserInfo,  execParser, fullDesc, header, helper, info, progDesc)

import {{ cookiecutter.module_name }} (Config(..), app)

-- | Parse the configuration from the command line.
options :: ParserInfo Config
options = info (helper <*> parser) description
  where
    parser = pure Config
    description =
      fold
        [ fullDesc
        , progDesc "{{ cookiecutter.synopsis }}"
        , header "{{ cookiecutter.project_name }} - TODO fill this in"
        ]

main :: IO ()
main = do
  cfg <- execParser options
  runReaderT app cfg
