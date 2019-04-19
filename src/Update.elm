module Update exposing (..)

import Model exposing (Model, Msg(..), Todo)

update : Msg -> Model -> Model
update msg model =
  case msg of
    Add ->
      { model | todos = ( Todo "Todoタイトル" "Todo詳細" ) :: model.todos }
