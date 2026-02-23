verifica :: Int -> Int -> [Int] -> [Int]
verifica a b xs = [x | x <- xs, x `mod` a == 0, x `mod` b == 0]

main :: IO()
main = do
    print (verifica 2 3 [1..30])
    