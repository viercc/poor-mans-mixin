{-# LANGUAGE PackageImports #-}
module Main where

{-

-- Simply importing the class-defining module Foo is an error.
import Foo

-}

-- Explicitly merge two namespaces
import "foo-class" Foo           -- exports (Foo(..))
import "foo-bar-instance" Foo()  -- exports nothing

import Bar

main :: IO ()
main =
  do print (doFoo (3 :: Int)) -- Use the instance from "foo-class"
     print (doFoo Bar0)       -- Use the instance from "foo-bar-instance"
