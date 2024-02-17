module Utils where

zipWithIndex :: [a] -> [(Int, a)]
zipWithIndex = zip [0..]

enumerate2D :: [[a]] -> [(Int, [(Int, a)])]
enumerate2D = zipWithIndex . map zipWithIndex
