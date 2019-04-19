module View exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Model exposing (Model, Msg(..), Todo)

view : Model -> Html Msg
view model =
  div []
      [ viewTable model.todos
      , button [ onClick Add ] [ text "Add" ]
      ]

viewTable : List Todo -> Html Msg
viewTable todos =
  table []
        [ thead []
              [ th [] [ text "Title" ]
              , th [] [ text "Description" ]
              ]
        , tbody [] ( List.map viewTr todos )
        ]

viewTr : Todo -> Html Msg
viewTr todo =
  tr []
    [ td [] [ text todo.title ]
    , td [] [ text todo.description ]
    ]
