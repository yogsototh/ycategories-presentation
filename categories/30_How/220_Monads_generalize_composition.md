Monads generalize composition
-----------------------------

Example with lists:

<pre class="haskell"><code>f=\x->[x]        ⇒ f 1 = [1]    ⇒ (f.f) 1 = [[1]]
g=\x->[x+1]      ⇒ g 1 = [2]    ⇒ (g.g) 1 = ERROR [2]+1
h=\x->[x+1,x*10] ⇒ h 1 = [2,10] ⇒ (h.h) 1 = ERROR [2,10]+1</code></pre>

How to fix that?  Kleisli composition

`f <=< g = \x -> join ((fmap f) (g x))`

<pre class="haskell"><code>f=\x->[x]        ⇒ f 1 = [1]    ⇒ (f <=< f) 1 = [1]
g=\x->[x+1]      ⇒ g 1 = [2]    ⇒ (g <=< g) 1 = [3]
h=\x->[x+1,x*10] ⇒ h 1 = [2,10] ⇒ (h <=< h) 1 = [3,20,11,100]</code></pre>
