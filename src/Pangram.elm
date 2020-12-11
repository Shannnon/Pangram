module Pangram exposing (isPangram)

import Set exposing (..)


isPangram : String -> Bool
isPangram sentence =
    let
        theCase : String
        theCase =
            String.toUpper sentence

        theString : List Char
        theString =
            String.toList theCase

        theList : Set Char
        theList =
            Set.fromList theString

        theDiff : Set Char
        theDiff =
            Set.diff theList letters

        answer : Bool
        answer =
            Set.isEmpty theDiff
    in
    answer


letters : Set Char
letters =
    String.toList "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        |> Set.fromList
