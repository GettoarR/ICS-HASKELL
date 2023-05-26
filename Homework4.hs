import GHC.CmmToAsm.AArch64.Instr (x0)
-- Q1. Part1) function sub that takes a character and returns an encoded character
sub :: Char -> Char
sub 'a' = '@'
sub 'b' = '8'
sub 'c' = '('
sub 'd' = '6'
sub 'e' = '3'
sub 'f' = '#'
sub 'g' = '9'
sub 'h' = '#'
sub 'i' = '1'
sub 'l' = '1'
sub 'o' = '0'
sub 'q' = '9'
sub 's' = '$'
sub 'x' = '%'
sub 'y' = '?'
sub n = n

-- Q1. Part2) function munge that takes a string and returns an encoded string


munge :: String -> String
munge x = map sub x
main = do
    print (munge "hello world")

