import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ZetaOn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompReixMemAdm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DarbouxSymplecticDoubledHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicWeilRepSchrodingerModelUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryCharacterTrivialOfSiegel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdelicSchwartzNeZeroAtOrigin

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.Doubling GlobalTheory.ThK.Bot GlobalTheory.DblBox

noncomputable section

namespace GlobalTheory.DblBox

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n d : ℕ}

def renumU {J : Matrix (Fin n) (Fin n) E} {J₂ : Matrix (Fin (n + n)) (Fin (n + n)) E}
    (hJ : J₂ = dblGram finSumFinEquiv J) : UG (cA σ) (GlobalTheory.WeilM.dbl (incM F J)) →* UA σ J₂ :=
  ((Units.map (Matrix.reindexAlgEquiv (AE F E) (AE F E) finSumFinEquiv).toRingEquiv.toMonoidHom).comp
    (UG (cA σ) (GlobalTheory.WeilM.dbl (incM F J))).subtype).codRestrict _ fun p => by
      have hp : p.1.1ᵀ * GlobalTheory.WeilM.dbl (incM F J) * p.1.1.map (cA σ) = GlobalTheory.WeilM.dbl (incM F J) := p.2
      rw [hJ, GlobalTheory.DefDoubling.incM_dblGram]
      change (p.1.1.submatrix finSumFinEquiv.symm finSumFinEquiv.symm)ᵀ *
        (GlobalTheory.WeilM.dbl (incM F J)).submatrix finSumFinEquiv.symm finSumFinEquiv.symm *
        (p.1.1.submatrix finSumFinEquiv.symm finSumFinEquiv.symm).map (cA σ) =
        (GlobalTheory.WeilM.dbl (incM F J)).submatrix finSumFinEquiv.symm finSumFinEquiv.symm
      rw [Matrix.transpose_submatrix, ← Matrix.submatrix_map, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, hp]

theorem mat_renumU {J : Matrix (Fin n) (Fin n) E} {J₂ : Matrix (Fin (n + n)) (Fin (n + n)) E}
    (hJ : J₂ = dblGram finSumFinEquiv J) (p : UG (cA σ) (GlobalTheory.WeilM.dbl (incM F J))) :
    mat (renumU hJ p) = p.1.1.submatrix finSumFinEquiv.symm finSumFinEquiv.symm := rfl

end GlobalTheory.DblBox

end
