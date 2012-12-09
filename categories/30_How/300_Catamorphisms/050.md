κατα-morphism: example with strings
-----------------------------------

~~~
type Algebra f a = f a -> a
data Mu f = InF { outF :: f (Mu f) }

cata :: Functor f => Algebra f a -> Mu f -> a
cata f = f . fmap (cata f) . outF

type Tree = Mu TreeF
data TreeF x = Node Int [x]

instance Functor TreeF where
  fmap f (Node e xs) = Node e (fmap f xs)

depth = cata phi where
  phi (Node x sons) = 1 + foldr max 0 sons
~~~
