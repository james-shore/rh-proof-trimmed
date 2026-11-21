import Mathlib
import Formalism.LocalToGlobal.ProjectiveLattices.DataAtPointN3

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.FormalGroupLawsExistenceTori

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open Formalism.MainNotions.DIV.Cons (SCF intO)
open scoped TensorProduct

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l}

section Point

variable {O : Type} [CommRing O] {β : O →+* c.F} {Y : Model Xo c β} {p : ℕ} {C : SCF p} {P : PointsOfFlagModel.PtC Y C}

structure FormLaws (A : DatAt Y P) : Prop where

  add : ∀ a a' b : A.Ylat, A.beta (a + a') b = A.beta a b + A.beta a' b

  balanced : ∀ (x : 𝓞 E) (a b : A.Ylat), A.beta (x • a) b = A.beta a (H.bar x • b)

  pos : ∀ a : A.Ylat, a ≠ 0 → 0 < A.beta a a

  posReal : ∀ (n : ℕ) (t : Fin n → ℝ) (a : Fin n → A.Ylat),
    (∑ i, t i ⊗ₜ[ℤ] a i : ℝ ⊗[ℤ] A.Ylat) ≠ 0 → 0 < ∑ i, ∑ j, t i * t j * A.beta (a i) (a j)

end Point

end GlobalTheory.IndefiniteRowSideFullHecke.FormalGroupLawsExistenceTori
