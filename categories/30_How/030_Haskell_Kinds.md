Haskell Kinds
-------------

In Haskell some types can take type variable(s).
Typically: `[a]`.

~~~
data Tree a = Node a [Tree a]
data CTree a b = CNode a [b]
~~~

Types have _kind_;
The kind is to type what type is to function.
Kind are the types for types (so meta).

~~~
Int, Char :: *
[], Maybe, Tree :: * -> *
CTree :: * -> * -> *
[Int], Maybe Char, Tree [Int] :: *
CTree [Int] :: * -> *
~~~
