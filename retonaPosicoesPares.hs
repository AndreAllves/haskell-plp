pares :: [a] -> [a]
pares [] = []
pares [x] = [x]
pares (x:_:xs) = x : pares xs

main :: IO ()
main = do
    print (pares [1,2,3,4,5,6,7])