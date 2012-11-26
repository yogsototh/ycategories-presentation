Haskell Types
-------------

We can make function that can work for _all_ type parameter.
Such function can only work with the _topology_ induced by the type.
We know such function won't work _on_ the elements.

Sometimes, the type determine a lot about the function:

<pre class="haskell"><code>fst :: (a,b) -> a -- Only one choice
snd :: (a,b) -> b -- Only one choice
f :: a -> [a]     -- Many choices
-- Possibilities: f x=[], or [x], or [x,x] or [x,...,x]

? :: [a] -> [a] -- Many choices
-- can only duplicate/remove/reorder elements
-- for example: the type of addOne isn't [a] -> [a]
addOne l = map (+1) l</code></pre>
