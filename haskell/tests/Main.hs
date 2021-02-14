--
-- EPITECH PROJECT, 2021
-- Haskell Tests
-- File description:
-- Main
--

module Main where

import Tests
import System.Exit

main = do
    good <- and <$> sequence [runTests]
    if good
        then
            putStrLn "Tests passed" >>
            exitSuccess
        else
            putStrLn "Tests Failed" >>
            exitFailure

-- main :: IO ()
-- main = do
--     result <- runTests
--     if result
--         then
--             putStrLn "Tests passed" >>
--             exitSuccess
--         else
--             putStrLn "Tests Failed" >>
--             exitFailure
--     return ()