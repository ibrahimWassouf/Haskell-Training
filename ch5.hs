{-#LANGUAGE NoMonomorphismRestriction #-}

-- Determine the type Q1
a = (* 9) 6
b = head [(0, "dodge"), (1, "kitteh")]
c = head [(0 :: Integer, "dodge"), (1, "kitteh")]
d = if False then True else False
e = length [1,2,3,4,5]
f = (length [1,2,3,4,5]) > (length "TACOCAT")

-- Q 2-4
x = 5
y = x + 5
w = y * 10
z y = y * 10
f' = 4 / y

-- Q5
x' = "Julie"
y' = " <3 "
z' = "Haskell"
f'' = x' ++ y' ++ z'

--Does it compile Q 1-3
bigNum = (^) 5
wahoo = bigNum $ 10

p = print
o = print "woohoo!"
i = p "hello world" 

a' = (+)
b' = a' $ 5
c' = b' $ 10
d' = a' c' $ 200 

--Write a type signature Q 1-3
functionH :: [a] -> a
functionH (x:_) = x

functionC :: (Ord a) => a -> a -> Bool
functionC x y =
  if (x > y) then True else False

functionS :: (a,b) -> b
functionS (x,y) = y

--Given a type, write the function
function1 :: a -> a
function1 a = a;

function2 :: a -> b -> a
function2 a _ = a 

function5 :: [a] -> [a]
function5 [] = []
function5 (_:xs) = xs

function6 :: (b -> c) -> (a -> b) -> a -> c
function6 bToc aTob a = bToc (aTob a)

function7 :: (a -> c) -> a -> a
function7 _ a = a

function8 :: (a -> b) -> a -> b
function8 aTob a = aTob a 

--Fix it
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x < y) then fstString x else sndString y
  where x = "Singin"
        y = "Somewhere"

main :: IO ()
main = do
  print (1+2)
  putStrLn "10"
  print (negate (-1))
  print ((+) 0 blah) 
  where blah = negate 1
