module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


date : List { name : String, releaseYear : Int, currentVersion : String }
date =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]



--funcion


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



--Act2/Students and Professor


recor : List { name : String, uType : String }
recor =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]



--funcion


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents lis =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        lis



--Act3/VideoGame


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videoGames : List Videogame
videoGames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 200
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of time"
      , releaseYear = 1998
      , available = False
      , downloads = 10
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres liss =
    List.map .genres liss



-- Act4/main


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13\""
    }



--maiin : Html msg es una variable


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]



-- Act5/add2


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-- => 5
-- Act6/add3


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



-- Should reduce to => -5
-- Act7/calc


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--calc 2 3 (+)      -- Should reduce to => (+) 2 3 => 5
--calc 2 3 (-)      -- Should reduce to => (-) 2 3 => -1
--calc 5 2 (//)     -- Should reduce to => (//) 5 2 => 2
