Monads are just monoids (1/4)
-----------------------------

A monoid is a triplet \\((M,⊙,e)\\) s.t.

- \\(M\\) a set
- \\(⊙:E×E→M\\)
- \\(e:1→M\\)

Satisfying

- \\(x⊙(y⊙z) = (x⊙y)⊙z, ∀x,y,z∈M\\)
- \\(e⊙x = x = x⊙e, ∀x∈M\\)
