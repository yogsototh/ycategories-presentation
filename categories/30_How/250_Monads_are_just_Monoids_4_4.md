Monads are just Monoids (4/4)
-----------------------------

Example: `Maybe` is a functor (`join` is ⊙)

- \\(M ⊙ (M ⊙ M)) = (M ⊙ M) ⊙ M\\)
- \\(η ⊙ M = M = M ⊙ η\\)

<pre class="nohighlight small"><code>join (Just (join (Just (Just x)))) = join (join (Just (Just (Just x))))
 join (Just (join (Just Nothing))) = join (join (Just (Just Nothing)))
        join (Just (join Nothing)) = join (join (Just Nothing))
                      join Nothing = join (join Nothing)

join (η (Just x)) =  Just x = Just (η x)
join (η  Nothing) = Nothing = Nothing</code></pre>

And `(Maybe,join,η)` is a monad.
