Monads are just Monoids (2/4)
-----------------------------

A Monad is a triplet \\((M,⊙,η)\\) s.t.

- \\(M\\) an <span class="yellow">Endofunctor</span> (to type `a` associate `M a`)
- \\(⊙:M×M→M\\) a <span class="yellow">nat. trans.</span> (i.e. `⊙::M (M a) → M a`)
- \\(η:I→M\\)  a <span class="yellow">nat. trans.</span> (\\(I\\) identity functor ; `η::a → M a`)

Satisfying

- \\(M ⊙ (M ⊙ M) = (M ⊙ M) ⊙ M\\)
- \\(η ⊙ M = M = M ⊙ η\\)
