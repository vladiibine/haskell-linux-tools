module Lib
    ( someFunc
    , add
    ) where

someFunc :: String -> IO ()
someFunc x = putStrLn $ "some library func: " ++ x

add x y = x + y