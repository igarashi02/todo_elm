module Model exposing (..)

type Msg = Add

type alias Todo =
  { title : String
  , description : String
  }

type alias Model =
  { todos : List Todo }

init : Model
init =
  { todos = [] }
