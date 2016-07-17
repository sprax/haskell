#!/usr/bin/env runhaskell
addTwo a b = a + b

main = do
    val1 <- readLn
    val2 <- readLn
    let sum = addTwo val1 val2
    print sum

