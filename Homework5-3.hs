--Question 3)

--Define a function that takes and outputs an array
reverse' :: [a] -> [a]
--if the array is empty return an empty array
reverse' [] = []
--if not reverse the array using array ++ operation and recursion
-- the function takes the first element and concatenates it at the end repeatedly
reverse' (x:xr) = reverse' xr ++ [x]

--Testing the output using random arrays
main = do
    print (reverse' [1..10])    
    print (reverse' "reverse me")