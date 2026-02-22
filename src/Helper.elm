module Helper exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



--Headers component


headers : String -> Html msg
headers tx =
    div []
        [ h1 [] [ text tx ]
        , h2 [] [ text tx ]
        , h3 [] [ text tx ]
        , h4 [] [ text tx ]
        , h5 [] [ text tx ]
        , h6 [] [ text tx ]
        ]


hyperlink : String -> String -> Html msg
hyperlink tx1 tx2 =
    a [ href tx1, target "blank" ] [ text tx2 ]



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"


main : Html.Html msg
main =
    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
