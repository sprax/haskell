-- read limit followed by numbers, yield only those < limit.
-- Basically, implement the following function but without calling filter:
--     f n arr = filter (< n) arr
--
f :: Int -> [Int] -> [Int]
f n arr = [ x | x <- arr, x < n ]

-- The Input/Output section. You do not need to change or modify this part
main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers
