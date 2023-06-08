data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood    _ = Blah

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = if (x == reverse x) then True else False
 
f :: (a,b) -> (c,d) -> ((b,d), (a,c))
f x y = ((snd x, snd y), (fst x, fst y) )

x = (+)

function :: Foldable t => t a -> Int
function xs = x w 1
  where w = length xs

identity = \x -> x

cs3 :: (a,b) -> a
cs3 x = fst x
