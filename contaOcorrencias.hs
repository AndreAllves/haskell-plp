conta :: Eq a => a -> [a] -> Int
conta _[] = 0
conta e (x:xs)
    | e == x = 1 + conta e xs
    | otherwise = conta e xs

main :: IO ()
main = do
    print (conta 2 [1,2,3,4,5,6,7])