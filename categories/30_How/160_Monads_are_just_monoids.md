Monads are just monoids (1/4)
-----------------------------

A monoid is a triplet \\((E,∙,e)\\) s.t.

- \\(E\\) a set
- \\(∙:E×E→E\\)
- \\(e:1→E\\)

Satisfying

- \\(x∙(y∙z) = (x∙y)∙z, ∀x,y,z∈E\\)
- \\(e∙x = x = x∙e, ∀x∈E\\)
