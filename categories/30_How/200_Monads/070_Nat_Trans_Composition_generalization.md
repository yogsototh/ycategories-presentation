Nat. Trans. &amp; Composition generalization
--------------------------------------------

Of course, we want ◎ to work like a composition.
Then it should have a neutral element and be associative.

- (h ◎ g) ◎ f = h ◎ (g ◎ f)
- η ◎ f = f = f ◎ η

Considering the first rule and the definition of ◎ it follows that:  

- `join (join (F (F (F a)))) = join (F (join (F (F a))))`
- abusing notations for `join` it is equivalent to  
  (F ⊙ F) ⊙ F = F ⊙ (F ⊙ F)

The second rule fix the type of `η :: a -> F a`.
