module Rendering (drawLevel, drawSprite, screenWidth) where

import Control.Monad (forM_, when)

import Raylib.Core.Textures (drawTexture)
import Raylib.Types (Texture)
import Raylib.Util.Colors (white)

import Levels (Level, w)
import Utils (enumerate2D)

cellWidth = 64
cellsPerRow = 10
screenWidth = cellWidth * cellsPerRow

drawLevel :: Texture -> Level -> IO ()
drawLevel tex lvl = do
  let u = enumerate2D lvl
  forM_ u $ \(j, v) -> do
    forM_ v $ \(i, cellType) -> do
      when (cellType == w) $ do
        drawSprite tex i j

drawSprite :: Texture -> Int -> Int -> IO ()
drawSprite tex i j = do
  let x = i * cellWidth
  let y = j * cellWidth
  drawTexture tex x y white
