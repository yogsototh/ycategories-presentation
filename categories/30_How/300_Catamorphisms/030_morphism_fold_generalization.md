κατα-morphism: fold generalization
----------------------------------

Typically, you need a recursive type (list, trees, ...)

~~~
Str = Cons Char Str

1st: replace the recursive type by another type.
StrChar a = Cons Char a
Str' a = Mu StrChar

Str' = InF { outF :: StrChar (Mu ListElement) }
Str' = InF { outF :: StrChar (Str') }
~~~

Clearly `Str'` is isomorph `String`.

~~~
type Algebra f a = f a -> a
data Mu f = InF { outF :: f (Mu f) }

cata :: Functor f => Algebra f a -> Mu f -> a
cata f = f . fmap (cata f) . outF
~~~
