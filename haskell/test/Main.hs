--
-- EPITECH PROJECT, 2021
-- unit_tests
-- File description:
-- Spec
--

import Tests
import System.Exit

success :: IO()
success = exitSuccess

failure :: IO()
failure = exitWith $ ExitFailure 84

main :: IO ()
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