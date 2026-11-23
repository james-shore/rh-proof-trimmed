import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.InterNumDetNonposSplitTorus
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapGeSubKapBase
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentSmoothProjectiveConnectedStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeadWeightLineNef
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusFlagUnitWeightBundlesNef
import Development.AbelianVarietyTheory.Definitions.Divisors.CovolXOfCovol
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ToroidalFlagProportionalityOfGoodChernWeilStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KeepsCuspOfIsUnifAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KerConstantCoeffEqSpan
import Development.AbelianVarietyTheory.Definitions.Divisors.WedgeNrmLeOfWedgeNormLe
import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomWeightHomWeight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelAutomorphismUnipotentFixesComplexPointEqOneStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCartierDivisorDetLieEigenpartsToroidalStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelAutomorphismIntegralMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightSectionsNonvanishingOpen
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsSeparateQuotientGenericFibreDescendsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCuspRuleOfBoundaryVanishingComponentSectioStatement
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SymplecticFormBasisChange
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommonRestrIsoTens

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory GlobalTheory.CechPic GlobalTheory.Vanishing GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.Cartier
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW secZ ptF LiesOn)
open GlobalTheory.FlagMod (FlagCover)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR levDet secRing move)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.OrbitSep

namespace GlobalTheory.OrbitSep

theorem val_ofSec_ne_zero {F : Type} [Field F] {X : Scheme.{0}} (p : X ⟶ Sp F) {B : LB X} (θ : B.Sec) (z : Sp ℂ ⟶ X)
    (k : B.ι) (hk : ⊤ ≤ z ⁻¹ᵁ B.U k) (hz : ∀ s, z s ∈ nonzeroLocus θ) :
    H0.val z k le_top hk (H0.ofSec p ⊤ θ) ≠ 0 := by
  refine (H0.val_ofSec z k le_top hk θ).trans_ne ?_
  have h : ⊤ ≤ z ⁻¹ᵁ X.basicOpen (θ.f k) := fun s hs =>
    (X.mem_basicOpen _ _ (hk hs)).2 ((isUnit_ger_iff θ (hk hs)).2 (hz s))
  rw [← TangentOrigin.evalPt_res z (X.basicOpen_le _) hk h]
  exact ((X.toRingedSpace.isUnit_res_basicOpen (θ.f k)).map _).ne_zero

theorem exists_chart_pt {X : Scheme.{0}} {B : LB X} (hB : B.IsLB) (z : Sp ℂ ⟶ X) : ∃ k, ⊤ ≤ z ⁻¹ᵁ B.U k := by
  obtain ⟨k, hk⟩ := ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart hB (z (IsLocalRing.closedPoint ℂ))
  refine ⟨k, fun s _ => ?_⟩
  obtain rfl : s = IsLocalRing.closedPoint ℂ := Subsingleton.elim (α := PrimeSpectrum ℂ) _ _
  exact hk

theorem cls_nsmul {Y : Scheme.{0}} {Λ : Type} [AddCommGroup Λ] {B : Λ → LB Y} (C : Common B) (n : ℕ) (a : Λ) :
    cls (B (n • a)) (C.isLB (n • a)) = n • cls (B a) (C.isLB a) := by
  induction n with
  | zero =>
    have h := GlobalTheory.HSApp.cls_common_add C 0 0
    simp only [add_zero] at h
    simp only [zero_nsmul]
    exact left_eq_add.1 h
  | succ n ih => rw [succ_nsmul, GlobalTheory.HSApp.cls_common_add C, ih, succ_nsmul]

end GlobalTheory.OrbitSep

namespace GlobalTheory.OrbitSep

end GlobalTheory.OrbitSep
