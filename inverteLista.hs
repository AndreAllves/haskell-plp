--versão O(n²)
inverte :: [a] -> [a]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]


--versão O(n)
inverteLis ::[a] -> [a]
inverteLis xs = aux xs []
    where 
        aux [] acc = acc
        aux (x:xs) acc = aux xs (x:acc)

main :: IO ()
main = do
    print (inverte [1,2,3])
    print (inverte [4,5,6])