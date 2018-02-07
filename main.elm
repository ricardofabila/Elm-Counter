module Main exposing (..)

import Html as Html
import Html.Events as Events
import Html.Attributes as Attributes


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , update = update
        , view = view
        }



-- Model


type alias Model =
    { value : Int
    }


model : Model
model =
    { value = 0
    }



-- Update


type Msg
    = NoOp
    | Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            { model | value = model.value + 1 }

        Decrement ->
            { model | value = model.value - 1 }



-- View


view : Model -> Html.Html Msg
view model =
    Html.body
        []
        [ stylesheet
        , Html.div [ Attributes.class "container text-center" ]
            [ espacios
            , Html.div [ Attributes.class "row" ]
                [ Html.div [ Attributes.class "col-xs-12 col-sm-4" ]
                    [ Html.button [ Events.onClick Decrement, Attributes.class "btn btn-danger form-control" ] [ Html.text "-" ]
                    ]
                , Html.div [ Attributes.class "col-xs-12 col-sm-4" ]
                    [ Html.p [ Attributes.style [ ( "font-size", "2em" ) ] ] [ toString model.value |> Html.text ]
                    ]
                , Html.div [ Attributes.class "col-xs-12 col-sm-4" ]
                    [ Html.button [ Events.onClick Increment, Attributes.class "btn btn-primary form-control" ] [ Html.text "+" ]
                    ]
                ]
            ]
        ]


stylesheet : Html.Html Msg
stylesheet =
    let
        tag =
            "link"

        attrs =
            [ Attributes.attribute "Rel" "stylesheet"
            , Attributes.attribute "property" "stylesheet"
            , Attributes.attribute "href" "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            ]

        children =
            []
    in
        Html.node tag attrs children


espacios : Html.Html msg
espacios =
    Html.div []
        [ Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        , Html.br [] []
        ]
