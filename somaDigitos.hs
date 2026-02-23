somaDig :: Int -> Int
somaDig 0 = 0
somaDig n = (n `mod` 10) + somaDig (n `div` 10)

main :: IO ()
main = do
    print (somaDig 12)