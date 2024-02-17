module OmNom where

import Control.Monad.State

data OmNom = OmNom { x :: Int, y :: Int } deriving (Eq, Show)

data OmNomAction = North | West | South | East | SouthEast deriving (Eq, Show)

runOmNom :: OmNom -> State OmNom () -> OmNom
runOmNom = flip execState

moveOmNom :: OmNomAction -> State OmNom ()
moveOmNom action =
  case action of
    West -> moveOmNomLeft
    East -> moveOmNomRight
    South -> moveOmNomDown
    SouthEast -> moveOmNomDown >> moveOmNomRight
    _ -> return ()

moveOmNomUp :: State OmNom ()
moveOmNomUp = undefined

moveOmNomLeft :: State OmNom ()
moveOmNomLeft =
  modify (\s -> s { x = (x s) - 1 })

moveOmNomRight :: State OmNom ()
moveOmNomRight = do
  s <- get
  put $ s { x = x s + 1 }

moveOmNomDown :: State OmNom ()
moveOmNomDown =
  modify (\omNom -> omNom { y = y omNom + 1 })

