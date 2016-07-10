module Main where

import Test.Framework (defaultMain, testGroup, Test)
import Test.Framework.Providers.HUnit
import Test.HUnit hiding (Test)

import FizzBuzz (fizzbuzz)

fizzbuzzSuite :: Test
fizzbuzzSuite = testGroup "fizzbuzz calls"
    [ testCase "1" (testFizzbuzz 1 "1")
    , testCase "2" (testFizzbuzz 2 "2")
    , testCase "3" (testFizzbuzz 3 "Fizz")
    , testCase "4" (testFizzbuzz 4 "4")
    , testCase "5" (testFizzbuzz 5 "Buzz")
    , testCase "15" (testFizzbuzz 15 "FizzBuzz")
    ]

testFizzbuzz :: Integer -> String -> Assertion
testFizzbuzz argument expected = expected @=? fizzbuzz argument

main :: IO ()
main = defaultMain
    [ fizzbuzzSuite
    ]