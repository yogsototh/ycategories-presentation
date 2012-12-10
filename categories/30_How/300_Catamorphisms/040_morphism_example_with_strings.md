κατα-morphism: example with strings
-----------------------------------

~~~
type Algebra f a = f a -> a
data Mu f = InF { outF :: f (Mu f) }

cata :: Functor f => Algebra f a -> Mu f -> a
cata f = f . fmap (cata f) . outF

-- Example with natural fold on String
data StrF x = Cons Char x | Nil
type Str = Mu StrF
instance Functor StrF where
  fmap f (Cons a as) = Cons a (f as)
  fmap _ Nil = Nil

length' :: Str -> Int
length' = cata phi where
  phi (Cons a b) = 1 + b
  phi Nil = 0

toMu :: [Char] -> Str
toMu (x:xs) = InF { outF = Cons x (toMu xs) }
toMu [] = InF { outF = Nil }
~~~
