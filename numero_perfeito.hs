eh_perfeito :: Int -> Bool
eh_perfeito n = sum divisores == n
    where 
        divisores = [d | d <- [1..n-1], n `mod` d == 0]

main :: IO ()
main = do
    print (eh_perfeito 6)
    print (eh_perfeito 10)