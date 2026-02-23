impares :: [a] -> [a]
impares [] = []
impares [_] = []
impares (_:x:xs) = x : impares xs

main :: IO ()
main = do
    print (impares [1,2,3,4,5,6,7])