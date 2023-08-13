--Eq Instances Exercises
data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn b) = a == b

data TwoIntegers = 
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a1 b1) (Two a2 b2) = a1 == a1 && b1 == b2 

data StringOrInt =
    TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  (==) (TisAnInt a) (TisAString b) = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
 (==) (Pair c c') (Pair b b') = c==b && c'==b' 

data Tuple a b =
    Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple c d) (Tuple c' d') = c==c' && d==d'

data Which a =
  ThisOne a
  | ThatOne a

instance (Eq a) => Eq (Which a) where
  (==) (ThisOne c) (ThisOne d) = c==d
  (==) (ThatOne c) (ThatOne d) = c==d
  (==) _ _ = False

--End of chapter exercises
data Person = Person | Bool deriving Show

printPerson :: Person -> IO () 
printPerson person = putStrLn (show person)

data Mood = Blah
  | Woot deriving Show

instance Eq Mood where
 (==) Blah Blah = True
 (==) Woot Woot = True
 (==) _ _       = False

settleDown x = if x == Woot
                  then Blah
                  else x

type Subject = String
type Verb = String
type Object = String

data Sentence = 
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
