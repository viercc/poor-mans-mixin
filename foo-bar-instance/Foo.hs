{-# LANGUAGE PackageImports #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Foo() where

import "foo-class" Foo
import Bar

instance Foo Bar where
    doFoo Bar0 = Bar1
    doFoo Bar1 = Bar0
