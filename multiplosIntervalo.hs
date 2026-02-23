multiplosIntervalo :: Int -> Int -> Int -> [Int]
multiplosIntervalo a b n = [x | x <- [a .. b], x `mod` n == 0, x `mod` n == 0]

main :: IO ()
main = do 
    print(multiplosIntervalo 2 6 3)