module Print1 where 

myGreeting :: String
myGreeting = "hello" ++ "world"

hello :: String
hello = "hello"
world :: String
world = "world"

main :: IO ()
main = do 
  putStrLn "Hello World"
  putStrLn myGreeting
  putStrLn newGreeting
    where newGreeting =
            concat [hello, " ", world]

