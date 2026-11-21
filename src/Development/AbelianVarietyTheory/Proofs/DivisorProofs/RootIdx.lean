import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne

set_option autoImplicit false

noncomputable section

open MvPolynomial GlobalTheory.CovTest

namespace GlobalTheory.BcEigen

def rootIdx (ι : Type) (N j : ℕ) (x : ι × Fin N) : Σ a : ι × Bool, Fin (rkB ι N j a) :=
  if h : (x.2 : ℕ) < j then ⟨(x.1, true), ⟨x.2, h⟩⟩
  else ⟨(x.1, false), ⟨(x.2 : ℕ) - j, by show (x.2 : ℕ) - j < N - j; have := x.2.isLt; omega⟩⟩

end GlobalTheory.BcEigen

end
