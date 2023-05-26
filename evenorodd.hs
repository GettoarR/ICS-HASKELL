iseven :: Int -> Bool
iseven n = mod n 2 == 0

main = do
    print (iseven 4)