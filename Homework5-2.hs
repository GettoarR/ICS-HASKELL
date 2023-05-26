--Question 2)

--Define a function that takes and outputs an integer
oddnumsequence :: Int -> Int
oddnumsequence x
--Using guards we can define what happens at each case:
-- if x is 1 then return 1
-- if x is smaller than 1 than sent an error using error checking
-- if x is greater than 1 than we use recursion to calculate the n-th digit of the odd sequence
    | x == 1     = 1
    | x < 1     = error "the argument should be equal or greater than 1"
    | x > 1     = oddnumsequence (x-1)+2

--Testing the output using a random number
main = do
    print (oddnumsequence 3)