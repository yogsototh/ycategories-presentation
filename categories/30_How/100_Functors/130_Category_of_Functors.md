Category of Functors
------------------------

If \\(\\C\\) is _small_ (\\(\\hom{\\C}\\) is a set).
All functors from \\(\\C\\) to some category \\(\\D\\)
form the category \\(\\mathrm{Func}(\\C,\\D)\\).

<img src="categories/img/mp/natural-transformation.png" alt="Natural transformation commutative diagram" class="right"/>

- \\(\\ob{\\mathrm{Func}(\\C,\\D)}\\): Functors \\(F:\\C→\\D\\)
- \\(\\hom{\\mathrm{Func}(\\C,\\D)}\\): _natural transformations_
    - η familly \\(η\_X\\in\\hom{\\D}\\) for \\(X\\in\\ob{\\C}\\) s.t.
    - ex: between Haskel functors; `F a -> G a`  
	Rearragement functions only.
- ∘: Functor composition


\\(\\mathrm{Func}(\\C,\\C)\\) is the category of endofunctors of \\(\\C\\).
