remove :: Eq a => a -> [a] -> [a]
remove _ [] = []
remove e (x:xs)
    | e == x = remove e xs
    | otherwise = x : remove e xs

main :: IO ()
main = do
    print (remove 1 [1,2,3,4,5,6,7])