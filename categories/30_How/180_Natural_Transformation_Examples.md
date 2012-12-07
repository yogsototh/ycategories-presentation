Natural Transformation Examples
-------------------------------

<pre><code class="haskell">data Tree a = Empty | Node a [Tree a]
              deriving (Show)
toList :: Tree a -> [a]
toList Empty = []
toList (Node x l) = [x] ++ concat (map toList l)</pre></code>


`toList` is a natural transformation.
It is also a morphism from `Tree` to `[]` in the Category of \\(\Hask\\) endofunctors.

<img style="float:left;width:50%" src="categories/img/mp/nattrans-tree-list.png" alt="natural transformation commutative diagram"/>
<figure style="float:right;width:40%">
<img src="categories/img/mp/tree-list-endofunctor-morphism.png" alt="natural transformation commutative diagram"/>
<figcaption><code>toList.toTree=id</code> &amp; <code>toTree.toList=id</code>.<br/>
Therefore <code>[]</code> &amp; <code>Tree</code> are <span class="yellow">isomorph</span>.
</figcaption>
</figure>
