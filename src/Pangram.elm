module Pangram exposing (isPangram)

import Set exposing (..)


isPangram : String -> Bool
isPangram sentence =
    String.toUpper sentence
        |> String.toList
        |> Set.fromList
        |> Set.diff letters
        |> Set.isEmpty


letters : Set Char
letters =
    String.toList "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        |> Set.fromList
