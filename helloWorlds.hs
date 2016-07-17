#!/usr/bin/env runhaskell

hello_world = putStrLn "Hello World"

hello_worlds 0 = return ()
hello_worlds n = do hello_world
                    hello_worlds (n-1)

main = do
   n <- readLn :: IO Int
   hello_worlds n

