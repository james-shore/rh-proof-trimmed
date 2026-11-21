import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteAdelicGaussians.HeisenbergLowerCommuteMiddle

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.FourierWhittaker (vecDomain vecMeasure pair)
open scoped NumberField.AdeleRing Classical

namespace Ad3.K.GA.CtvP

variable {K : Type} [Field K] [NumberField K]

open Ad3.K.GA.unipotentTranslateContinuity

local notation "𝔞" => algebraMap K 𝔸[K]

theorem val_nx (v : Multiplicative K) :
    ((nx K v : GL (Fin 2) K) : Matrix (Fin 2) (Fin 2) K) = !![1, v.toAdd; 0, 1] := rfl

def chiH (ξ : Fin 2 → K) (y : Fin 3 → 𝔸[K]) : ℂ :=
  (adelicChar K (-(𝔞 (ξ 0) * y 0 + 𝔞 (ξ 1) * y 1)) : ℂ)

section reps

variable {ξ : Fin 2 → K} (hξ0 : ξ 0 ≠ 0) (hξ1 : ξ 1 ≠ 0)

def gU : GL (Fin 2) K :=
  Matrix.GeneralLinearGroup.mkOfDetNeZero !![0, ξ 0 * ξ 1; ξ 1, 0] (by
    simp [Matrix.det_fin_two_of, hξ0, hξ1])

def gV : GL (Fin 2) K :=
  Matrix.GeneralLinearGroup.mkOfDetNeZero !![(ξ 0)⁻¹, 0; 0, (ξ 0 * ξ 1)⁻¹] (by
    simp [Matrix.det_fin_two_of, hξ0, hξ1])

theorem val_gU : (gU hξ0 hξ1).val = !![0, ξ 0 * ξ 1; ξ 1, 0] := rfl

theorem val_gV : (gV hξ0 hξ1).val = !![(ξ 0)⁻¹, 0; 0, (ξ 0 * ξ 1)⁻¹] := rfl

end reps

end Ad3.K.GA.CtvP

namespace Ad3.K.GA

end Ad3.K.GA
