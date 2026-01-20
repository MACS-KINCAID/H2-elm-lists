module TestSuite exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, float, int, list, niceFloat, string)
import Helper exposing (..)
import Test exposing (..)


isEmptyTest : Test
isEmptyTest =
    describe "isEmpty function"
        [ test "isEmpty []" <|
            \_ ->
                isEmpty []
                    |> Expect.equal True
        , test "isEmpty [\"a\"]" <|
            \_ ->
                isEmpty [ "a" ]
                    |> Expect.equal False
        , fuzz
            (list string)
            "isEmpty accept List string"
          <|
            \fuzzList ->
                isEmpty fuzzList
                    |> Expect.equal (List.length fuzzList == 0)
        ]


headTest : Test
headTest =
    describe "head function"
        [ test "head []" <|
            \_ ->
                head []
                    |> Expect.equal -100
        , test "head [2]" <|
            \_ ->
                head [ 2 ]
                    |> Expect.equal 2
        , fuzz
            (list int)
            "head accept List int"
          <|
            \fuzzList ->
                head fuzzList
                    |> Expect.equal
                        (case List.head fuzzList of
                            Nothing ->
                                -100

                            Just x ->
                                x
                        )
        ]


canBuyAlcoholTest : Test
canBuyAlcoholTest =
    describe "canBuyAlcohol function"
        [ test "canBuyAlcohol []" <|
            \_ ->
                canBuyAlcohol []
                    |> Expect.equal []
        , test "canBuyAlcohol [17,18]" <|
            \_ ->
                canBuyAlcohol [ 17, 18 ]
                    |> Expect.equal [ False, True ]
        , test "canBuyAlcohol [18,17]" <|
            \_ ->
                canBuyAlcohol [ 18, 17 ]
                    |> Expect.equal [ True, False ]
        , fuzz (list int) "canBuyAlcohol accept List Int" <|
            \fuzzList ->
                canBuyAlcohol fuzzList
                    |> Expect.equal (List.map (\n -> n >= 18) fuzzList)
        , fuzz (list float) "canBuyAlcohol accept List Float" <|
            \fuzzList ->
                canBuyAlcohol fuzzList
                    |> Expect.equal (List.map (\n -> n >= 18) fuzzList)
        ]


allUpperCaseTest : Test
allUpperCaseTest =
    describe "allUpperCase function"
        [ test "allUpperCase []" <|
            \_ ->
                allUpperCase []
                    |> Expect.equal []
        , test "allUpperCase [\"functional\", \"Programming\"]" <|
            \_ ->
                allUpperCase [ "functional", "Programming" ]
                    |> Expect.equal [ "FUNCTIONAL", "PROGRAMMING" ]
        , fuzz (list string)
            "allUpperCase accept Strings"
          <|
            \fuzzList ->
                allUpperCase fuzzList
                    |> Expect.equal (List.map String.toUpper fuzzList)
        ]


approveCourseTest : Test
approveCourseTest =
    describe "approveCourse function" <|
        [ test "approveCourse []" <|
            \_ ->
                approveCourse []
                    |> Expect.equal []
        , test "approveCourse [6, 7]" <|
            \_ ->
                approveCourse [ 6, 7 ]
                    |> Expect.equal [ False, True ]
        , test "approveCourse [7, 6]" <|
            \_ ->
                approveCourse [ 7, 6 ]
                    |> Expect.equal [ True, False ]
        , fuzz (list float)
            "approveCourse accept List float"
          <|
            \fuzzList ->
                approveCourse fuzzList
                    |> Expect.equal (List.map (\n -> n >= 7) fuzzList)
        ]
