module UI.Counter where

import Prelude
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

data Action
  = Increment
  | Decrement

component :: forall query input output m. H.Component query input output m
component =
  H.mkComponent
    { initialState
    , render
    , eval: H.mkEval H.defaultEval { handleAction = handleAction }
    }
  where
  initialState _ = 0

  render state =
    HH.div_
      [ HH.button [ HE.onClick \_ -> Decrement ] [ HH.text "-" ]
      , HH.p_ [ HH.text (show state) ]
      , HH.button [ HE.onClick \_ -> Increment ] [ HH.text "+" ]
      ]

  handleAction = case _ of
    Decrement -> H.modify_ \state -> state - 1
    Increment -> H.modify_ \state -> state + 1
