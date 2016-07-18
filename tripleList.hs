#!/usr/bin/env runhaskell
-- duplicate every element in a list n times

-- Version that uses a pattern match
fn :: Int -> [a] -> [a]
fn _ [] = []
fn n (x:xs) = (take n (repeat x)) ++ fn n xs

main = do
   let xs = fn  3 [1, 2, 3]
   print xs
