-- 1) List comprehension that returns all positive factors of the number 210.
-- 2) List comprehension that returns a list of Pythagorean triads (a, b, c) in the range 1..100

positive_factors :: Int -> [Int]
positive_factors f = [x|x <- [1..f], f `mod`x == 0]

triads :: Int -> [(Int,Int,Int)]
triads n = [(a,b,c) |c <- [1..n], b <- [ 1..n], a<-[1..n], a^2 + b^2 == c^2, a<b]


main = do
    print (positive_factors 210)
    print (triads 100 )