--
-- EPITECH PROJECT, 2021
-- unit_tests
-- File description:
-- Tests
--

{-# LANGUAGE TemplateHaskell #-}

module Tests where

import Test.QuickCheck

add :: Int -> Int -> Int
add x y = x + y

prop_testAdd x y = add x y == x + y
    where types = (x::Int, y::Int)

return []
runTests :: IO Bool
runTests = $quickCheckAll