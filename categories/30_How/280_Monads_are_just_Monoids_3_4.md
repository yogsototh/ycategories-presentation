Monads are just Monoids (3/4)
-----------------------------

Example: `Maybe` is a functor

- \\(M\\) an <span class="yellow">Endofunctor</span>
- \\(⊙:M×M→M\\) a nat. trans. (× is functor composition)
- \\(η:I→M\\)  a nat. trans. (\\(I\\) identity functor)

<pre class="haskell"><code>-- In Haskell ⊙ is "join" in "Control.Monad"
join :: Maybe (Maybe a) -> Maybe a
join (Just (Just x)) = Just x
join _               = Nothing

-- In Haskell the "return" function (unfortunate name)
η :: a -> Maybe a
η x = Just x</code></pre>
