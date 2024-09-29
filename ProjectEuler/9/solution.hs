#!/usr/bin/env runhaskell

main :: IO ()
main =
  (print . head)
    [ (a, b, c, a * b * c)
      | a <- [1 .. 334],
        b <- [2 .. 1000],
        a < b,
        c <- [3 .. 997],
        b < c,
        a ^ 2 + b ^ 2 == c ^ 2,
        a + b + c == 1000
    ]
