Nat. Trans. &amp; Composition generalization
--------------------------------------------

Goal, find: `◎ :: (b -> F c) -> (a -> F b) -> (a -> F c)`

Let's go slowly ;  `f :: a -> F b`, `g :: b -> F c`:

- `(g ◎ f) x` ???
- First apply `f` to `x` ⇒ `f x :: F b`
- Then how to apply `g` properly to an element of type `F b`?
- Use `fmap :: (b -> c) -> (F b -> F c)`!
- `(fmap g) :: F b -> F (F c)`
- `(fmap g) (f x) :: F (F c)` it almost WORKS!
- We lack an important component, `join :: F (F c) -> F c`
- `(g ◎ f) x = join ((fmap g) (f x))` ☺ (in Haskell `<=<`, Klesli arrow).
