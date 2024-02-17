{-# OPTIONS -Wall #-}
module Main (main) where

import Raylib.Core (clearBackground, changeDirectory, getApplicationDirectory)
import Raylib.Core.Textures (loadImage, loadTextureFromImage)
import Raylib.Util (drawing, whileWindowOpen0, withWindow)
import Raylib.Util.Colors (beige)

import Assets (wallPath, candyPath, omnomPath)
import Rendering (drawLevel, drawSprite, screenWidth)

import OmNom
import Levels (getPosOf, o, c)

import Game (currentLevel, omNomStrategy)

import Writer

main :: IO ()
main = do
  withWindow
    screenWidth
    screenWidth
    "Am-Nyam"
    60
    ( \window -> do
        _ <- changeDirectory =<< getApplicationDirectory
        getApplicationDirectory >>= putStrLn

        wallTex <- loadImage wallPath >>= (`loadTextureFromImage` window)
        candyTex <- loadImage candyPath >>= (`loadTextureFromImage` window)
        omnomTex <- loadImage omnomPath >>= (`loadTextureFromImage` window)

        let (oi, oj) = currentLevel `getPosOf` o
        let (ci, cj) = currentLevel `getPosOf` c

        let (OmNom eoi eoj) = runOmNom (OmNom oi oj) omNomStrategy

        whileWindowOpen0 $ do
          drawing $ do
            clearBackground beige
            drawLevel wallTex currentLevel
            drawSprite candyTex ci cj
            drawSprite omnomTex eoi eoj
    )
