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
