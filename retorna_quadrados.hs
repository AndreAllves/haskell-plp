retorna_quadrados :: [Int] -> [Int]
retorna_quadrados [] = []
retorna_quadrados xs = [x * 2 | x <- xs]

main :: IO ()
main = do
    print (retorna_quadrados [1,2,3,4])