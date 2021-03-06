module Data.AddressBook where

import Prelude
import Control.Plus (empty)
import Data.List (List(..), filter, head, (:))
import Data.Maybe (Maybe)

type Entry
  = { firstName :: String
    , lastName :: String
    }

type Address
  = { street :: String
    , city :: String
    , state :: String
    }

fullName :: Entry -> String
fullName { firstName: f, lastName: l } = "Hello, " <> f <> " " <> l
