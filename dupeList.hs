#!/usr/bin/env runhaskell
-- duplicate every element in a list n times

f :: Int -> [Int] -> [Int]
-- Version that uses a pattern match
f _ [] = []
f n (x:xs) = (take n (repeat x)) ++ f n xs

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
