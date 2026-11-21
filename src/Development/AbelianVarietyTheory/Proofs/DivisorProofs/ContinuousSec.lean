import Mathlib

open MeasureTheory Measure Topology
open scoped Pointwise

noncomputable section
namespace GlobalTheory.SectionProjectionFormula

variable {ι : Type} [Fintype ι] {A : Type} {B : ι → Type} {G : Type}
  [Group G] [Group A] [∀ i, Group (B i)]

def proj (πA : G →* A) (πB : (i : ι) → G →* B i) : G →* A × ((i : ι) → B i) :=
  πA.prod (Pi.monoidHom πB)

lemma proj_apply (πA : G →* A) (πB : (i : ι) → G →* B i) (x : G) :
    proj πA πB x = (πA x, fun i => πB i x) := rfl

end GlobalTheory.SectionProjectionFormula
end
