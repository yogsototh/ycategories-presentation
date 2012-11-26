Monads are just Monoids (2/4)
-----------------------------

A Monad is a triplet \\((M,⊙,η)\\) s.t.

- \\(M\\) an <span class="yellow">Endofunctor</span>
- \\(⊙:M×M→M\\) a nat. trans. (× is functor composition)
- \\(η:I→M\\)  a nat. trans. (\\(I\\) identity functor)

Satisfying

- \\(M ⊙ (M ⊙ M)) = (M ⊙ M) ⊙ M\\)
- \\(η ⊙ M = M = M ⊙ η\\)
