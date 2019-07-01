module Main exposing (Model, Msg(..), Todo, init, main)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- Model


type Msg
    = Add


type alias Todo =
    { title : String
    , description : String
    }


type alias Model =
    { todos : List Todo }


init : Model
init =
    { todos = [] }



-- Update


update : Msg -> Model -> Model
update msg model =
    case msg of
        Add ->
            { model | todos = Todo "Todoタイトル" "Todo詳細" :: model.todos }



-- View


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
        , tbody [] (List.map viewTr todos)
        ]


viewTr : Todo -> Html Msg
viewTr todo =
    tr []
        [ td [] [ text todo.title ]
        , td [] [ text todo.description ]
        ]
