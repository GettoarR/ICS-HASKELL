-- The function shoppingList implements the rules directly for function S(m,b,c)
-- it takes 3 boolean value and outputs one boolean
shoppingList :: Bool -> Bool -> Bool -> Bool
shoppingList m b c = (m || b || c) && (c || not m)

-- The function shoppingList' implements the simplified version of S(m,b,c)
-- derived from the truthtable (after simplifaction) it takes 3 boolean and outputs one
shoppingList' :: Bool -> Bool -> Bool -> Bool
shoppingList' m b c = (b && not m) || c

-- Function interpret to generate all possible interpretations of m, b, and c
-- It assigns 0 and 1's to all three letters
interpret :: [(Bool, Bool, Bool)]
interpret = [(m, b, c) | m <- [False, True], b <- [False, True], c <- [False, True]]

-- Truthtable function outputs two boolean values, one for each of the above functions
-- shoppingList and shoppingList'
-- We can see that the truthtable are the same for both these functions
--which verifies that indeed the functions are the same
truthtable :: [(Bool, Bool)]
truthtable = [(shoppingList m b c, shoppingList' m b c) | (m, b, c) <- interpret]

-- printing the results and veryfing the truthtable for both functions
main = do
    print truthtable