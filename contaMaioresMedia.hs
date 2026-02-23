maioresQueMedia :: (Fractional a, Ord a) => [a] -> Int
maioresQueMedia [] = 0
maioresQueMedia xs =
    let (s,n) = somaTam xs
        media = s / fromIntegral n
    in conta media xs
    where
        somaTam [] = (0,0)
        somaTam (x:xs) =
            let (s,n) = somaTam xs
            in (x+s, n+1)
        
        conta _ [] = 0
        conta m (x:xs)
            | x > m = 1 + conta m xs
            | otherwise = conta m xs

main :: IO ()
main = do
    print (maioresQueMedia [1,2,3,4,5,6,7])