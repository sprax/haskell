#!/usr/bin/env runhaskell
-- helloReplicate.hs -- replicates string n times into a list

helloWorldReplicate :: Int -> IO ()
helloWorldReplicate n = putStrLn $ unlines (replicate n "Hello World")

main :: IO ()
main = do
    n <- readLn :: IO Int
    helloWorldReplicate n

