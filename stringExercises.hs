module StringExercises where

partA :: [Char] -> IO ()
partA string = do
  putStrLn newString where
    newString = 
      string ++ "!"

partB :: [Char] -> Char
partB string = do
  (!!) string 4

partC :: [Char] -> [Char]
partC string = do
  string ++ "!"

q3 :: String -> Char
q3 string = do
  string !! 2

rvrs :: String -> IO ()
rvrs string = do
  let cutString = take 9 "Curry is Awesome"
  let token1 = take 5 cutString
  let token2 = drop 5 cutString
  let token3 = drop 9 string
  let reversedString = token3 ++ token2 ++ token1
  putStrLn reversedString
