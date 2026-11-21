import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsOpenChartFramedPointTestRing
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFramedPointBaseChangeAlgebraMap
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LawsFieldsSeparately
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsTransitionUnique
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsDiscreteValuationRingPlace

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Frames

namespace GlobalTheory.LocM.Inhab

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H}

section Charts

variable {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

theorem isOpenImmersion_generic {F : Type} [Field F] (V : ValuationSubring F) [IsDiscreteValuationRing V] :
    IsOpenImmersion (spMap V.subtype) := by
  obtain ⟨π, hπ⟩ := IsDiscreteValuationRing.exists_irreducible V
  have : IsLocalization.Away π F := by
    refine (IsLocalization.iff_of_le_of_exists_dvd (Submonoid.powers π) (nonZeroDivisors V) ?_ ?_).2 inferInstance
    · rintro _ ⟨n, rfl⟩
      exact pow_mem (mem_nonZeroDivisors_of_ne_zero hπ.ne_zero) n
    · intro a ha
      obtain ⟨n, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible (nonZeroDivisors.ne_zero ha) hπ
      exact ⟨π ^ n, ⟨n, rfl⟩, (Units.mul_left_dvd).2 dvd_rfl⟩
  exact IsOpenImmersion.of_isLocalization (S := F) π

end Charts

variable {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ}

end GlobalTheory.LocM.Inhab
