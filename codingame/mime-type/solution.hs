#!/usr/bin/env runhaskell

import Control.Monad
import Data.Char as C
import Data.List (isSuffixOf)
import Data.Map (findWithDefault, fromList)
import System.IO

splitOn :: Char -> String -> [String]
splitOn c s = case dropWhile (== c) s of
  "" -> []
  s' -> w : splitOn c s''
    where
      (w, s'') = break (== c) s'

lower :: String -> String
lower = map C.toLower

main :: IO ()
main = do
  --   hSetBuffering stdout NoBuffering -- DO NOT REMOVE

  n :: Int <- fmap read getLine -- Number of elements which make up the association table.
  q :: Int <- fmap read getLine -- Number Q of file names to be analyzed.
  types <- Data.Map.fromList . map ((\x -> ((lower . head) x, x !! 1)) . words) <$> replicateM n getLine

  replicateM_ q $ do
    -- One file name per line.
    fname <- fmap lower getLine
    -- let tokens = splitOn '.' fname
    -- let ext = if null tokens then "" else last tokens
    let ext = last <$> splitOn '.' fname
    let ext_key = if ("." ++ ext) `isSuffixOf` fname then ext else ""
    -- let ext_key = [c | ("." ++ ext) `isSuffixOf` fname, c <- ext]

    -- For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.
    putStrLn $ Data.Map.findWithDefault "UNKNOWN" ext_key types
