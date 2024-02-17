module Levels where

import Utils (enumerate2D)

data CellDescription = Omnom | Candy | Wall | Empty deriving (Eq, Show)

type Level = [[CellDescription]]

o = Omnom
c = Candy
w = Wall
e = Empty

getPosOf :: Level -> CellDescription -> (Int, Int)
getPosOf lvl d =
  let l = enumerate2D lvl in
  let [(i, [(j, _)])] = filter ((/= []) . snd) $ map (\(j, v) ->
        (j, filter (\(_, u) -> u == d) v)) l in (i, j)

lvl1 :: Level
lvl1 = 
  [[w,w,w,w,w,w,w,w,w,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,o,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,c,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,w,w,w,w,w,w,w,w,w]
  ]

lvl2 :: Level
lvl2 = 
  [[w,w,w,w,w,w,w,w,w,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,o,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,c,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,w,w,w,w,w,w,w,w,w]
  ]

lvl3 :: Level
lvl3 = 
  [[w,w,w,w,w,w,w,w,w,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,o,e,e,e,e,e,e,w]
  ,[w,e,e,c,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,w,w,w,w,w,w,w,w,w]
  ]

lvl4 :: Level
lvl4 = 
  [[w,w,w,w,w,w,w,w,w,w]
  ,[w,o,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,c,w]
  ,[w,w,w,w,w,w,w,w,w,w]
  ]

lvl5 :: Level
lvl5 = 
  [[w,w,w,w,w,w,w,w,w,w]
  ,[w,o,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,e,e,e,e,e,e,e,c,w]
  ,[w,e,e,e,e,e,e,e,e,w]
  ,[w,w,w,w,w,w,w,w,w,w]
  ]
