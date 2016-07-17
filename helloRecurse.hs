#!/usr/bin/env runhaskell
-- helloRecurse.hs -- calls helloWorld n times in a recursive "loop"

helloWorld = putStrLn "Hello World"

helloWorldRecurse 0 = return ()
helloWorldRecurse n = do helloWorld
                         helloWorldRecurse (n-1)

main = do
   n <- readLn :: IO Int
   helloWorldRecurse n

