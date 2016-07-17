#!/usr/bin/env runhaskell
-- helloRepeat.hs -- takes first n elements from virtual infinite list of strings

helloWordRepeat :: Int -> IO ()
helloWordRepeat n = putStrLn $ unlines (take n (repeat "Hello World"))

main :: IO ()
main = do
    n <- readLn :: IO Int
    helloWordRepeat n

