ordenada :: Ord a => [a] -> Bool
ordenada [] = True
ordenada [_] = True
ordenada (x:y:xs) = x <= y && ordenada (y:xs)

main :: IO ()
main = do
    print (ordenada [1,2,3,4,5,6,7])