module Foo(Foo(..)) where

class Foo a where
    doFoo :: a -> a

instance Foo Int where
    doFoo = succ
