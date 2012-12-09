Nat. Trans. &amp; Composition generalization
--------------------------------------------

The Problem; example with lists:

<pre class="haskell"><code>f x = [x]       ⇒ f 1 = [1]   ⇒ (f.f) 1 = [[1]] ✗
g x = [x+1]     ⇒ g 1 = [2]   ⇒ (g.g) 1 = ERROR [2]+1 ✗
h x = [x+1,x*3] ⇒ h 1 = [2,3] ⇒ (h.h) 1 = ERROR [2,3]+1 ✗ </code></pre>

How to fix that?  We want to construct an operator which is able to compose:

`f :: a -> F b` &amp; `g :: b -> F c`.

More specifically we want to create an operator ◎ of type

`◎ :: (b -> F c) -> (a -> F b) -> (a -> F c)`

<span class="smaller">Note if F = I, ◎ = ∘.</span>
