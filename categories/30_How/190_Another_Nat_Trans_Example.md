Another Nat. Trans. Example
---------------------------

<pre><code class="haskell">
toMaybe :: [a] -> Maybe a   ;   mToList :: Maybe a -> [a]
toMaybe [] = Nothing        ;   mToList Nothing = []
toMaybe (x:xs) = Just x     ;   mToList Just x  = [x]
</pre></code>


`toMaybe` is a natural transformation.
It is also a morphism from `[]` to `Maybe` in the Category of \\(\Hask\\) endofunctors.

<img style="float:left;width:50%" src="categories/img/mp/nattrans-list-maybe.png" alt="natural transformation commutative diagram"/>
<figure style="float:right;width:40%">
<img src="categories/img/mp/list-maybe-endofunctor-morphism.png" alt="natural transformation commutative diagram"/>
<figcaption>There is <span class="red">no isomorphism</span>.<br/>
Hint: <code>Bool</code> lists longer than 1.
</figcaption>
</figure>
