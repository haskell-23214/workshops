module Writer where

import Control.Monad.Writer
import Data.Monoid

--mconcat :: [String] -> String
--mconcat [] = ""
--mconcat x:xs = x ++ mconcat xs

sumByWriter :: Int -> Int -> Writer (Sum Int) Int
sumByWriter x y = do
  tell $ Sum x
  tell $ Sum y
  return $ x + y
