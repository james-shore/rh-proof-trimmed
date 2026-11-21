import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsGenericIffIsGenericFor
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StrongMultiplicityOne
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockSizesSum
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MeasureFundDomLtTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripSizesSum

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LeviBlockExponent GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.CuspBlock GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.PairIndProd
open GlobalTheory.SmGL GlobalTheory.PRep

section Transport

variable {G W₁ W₂ : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [AddCommGroup W₁] [Module ℂ W₁] [AddCommGroup W₂] [Module ℂ W₂]
  {P Q : Subgroup G} {σ : Representation ℂ P W₁} {τ : Representation ℂ Q W₂}

def indTransport (hQP : Q ≤ P) (T : W₁ →ₗ[ℂ] W₂)
    (hT : ∀ (q : Q) (w : W₁), T (σ ⟨q, hQP q.2⟩ w) = τ q (T w)) :
    (smInd P σ).IntertwiningMap (smInd Q τ) where
  toLinearMap :=
    { toFun := fun φ => ⟨⟨fun g => T (φ.1.1 g), fun q g => by
          show T (φ.1.1 ((⟨q, hQP q.2⟩ : P) * g)) = τ q (T (φ.1.1 g))
          rw [φ.1.2 ⟨q, hQP q.2⟩ g, hT]⟩,
        mem_smoothPart_of_nhds (Filter.mem_of_superset (IsOpen.mem_nhds φ.2 (by simp)) fun g hg => by
          have hg' : ind P σ g φ.1 = φ.1 := hg
          apply Subtype.ext
          funext x
          exact congrArg T (congrFun (congrArg Subtype.val hg') x))⟩
      map_add' := fun φ ψ => by ext g; simp
      map_smul' := fun c φ => by ext g; simp }
  isIntertwining' g := by ext φ x; rfl

theorem indTransport_apply (hQP : Q ≤ P) (T : W₁ →ₗ[ℂ] W₂)
    (hT : ∀ (q : Q) (w : W₁), T (σ ⟨q, hQP q.2⟩ w) = τ q (T w)) (φ) (g : G) :
    (indTransport hQP T hT φ).1.1 g = T (φ.1.1 g) := rfl

end Transport

end GlobalTheory.PairIndProd
