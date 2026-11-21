import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HessRelFnB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PnPosOfGeneratesAt
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinsumLifts
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingKrullDimIntegers
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClosedPointGeometricFibresFinite
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsTangent
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjFsBasisOfUnitary
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelNeg
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverFunctionFieldMapEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageOfIsPullback

open CategoryTheory AlgebraicGeometry Limits NumberField IsDedekindDomain TopologicalSpace
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M
open GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.CxPts GlobalTheory.ShFam GlobalTheory.Mean4 GlobalTheory.Mean4O

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.Mean4O.HermCover

variable {F : Type} [Field F] [NumberField F]

theorem injective_emb (σ : 𝓞 F →+* ℂ) : Function.Injective σ :=
  (RingHom.injective_iff_ker_eq_bot _).2
    (Ideal.eq_bot_of_comap_eq_bot (R := ℤ) (eq_bot_iff.2 fun n hn => by simpa using hn))

def extEmb (σ : 𝓞 F →+* ℂ) : F →+* ℂ := IsFractionRing.lift (K := F) (injective_emb σ)

theorem extEmb_comp (σ : 𝓞 F →+* ℂ) : (extEmb σ).comp (algebraMap (𝓞 F) F) = σ :=
  RingHom.ext fun x => by rw [RingHom.comp_apply, extEmb, IsFractionRing.lift_algebraMap]

theorem spMap_extEmb (σ : 𝓞 F →+* ℂ) : spMap σ = spMap (extEmb σ) ≫ spMap (algebraMap (𝓞 F) F) :=
  (congrArg spMap (extEmb_comp σ).symm).trans (Spec.map_comp (CommRingCat.ofHom _) (CommRingCat.ofHom _))

variable {C : CxSt F} {Y : Var F} (V : Cover Y)

def liftPt (σ : 𝓞 F →+* ℂ) (y : CxPts V.p σ) : CxPts (V.π ≫ Y.str) (extEmb σ) :=
  ⟨V.pb.lift y.1 (spMap (extEmb σ)) (y.2.trans (spMap_extEmb σ)), V.pb.lift_snd _ _ _⟩

theorem liftPt_j (σ : 𝓞 F →+* ℂ) (y : CxPts V.p σ) : (liftPt V σ y).1 ≫ V.j = y.1 := V.pb.lift_fst _ _ _

abbrev down (τ : F →+* ℂ) (z : CxPts (V.π ≫ Y.str) τ) : Pts Y τ := Points.PtsOver.map V.π rfl _ z

variable {V} {B : LB V.X}

def wgt (A : Adl C Y) (r : (B.pull V.j).ι → V.G.functionFieldˣ) (τ : F →+* ℂ) (i : B.ι)
    (z : CxPts (V.π ≫ Y.str) τ) : ℝ :=
  Real.log (‖ratVal (V.φ (genAt A.D (under (down V τ z))) * (r (fun _ => i) : V.G.functionField)) z‖ ^ 2) -
    Real.log (Real.exp (-(2 * (A.n : ℕ) * A.ci (InfinitePlace.mk τ))) *
      C.pn Y τ A.D (A.m τ) (C.cx Y τ (genAt A.D (under (down V τ z)))) (down V τ z))

theorem liftPt_mem {σ : 𝓞 F →+* ℂ} {y : CxPts V.p σ} {i : B.ι} (h : y ∈ ptsIn V.p σ (B.U i)) :
    liftPt V σ y ∈ ptsIn (V.π ≫ Y.str) (extEmb σ) ((B.pull V.j).U (fun _ => i)) := by
  rw [mem_ptsIn]
  refine Set.mem_iInter.2 fun _ => ?_
  show V.j.base _ ∈ B.U i
  have := mem_ptsIn.1 h
  rw [← liftPt_j V σ y] at this
  exact this

theorem wgt_trans (A : Adl C Y) {r : (B.pull V.j).ι → V.G.functionFieldˣ} (h : V.FinInd A B r) (σ : 𝓞 F →+* ℂ)
    (i j : B.ι) (y : CxPts V.p σ) (hi : y ∈ ptsIn V.p σ (B.U i)) (hj : y ∈ ptsIn V.p σ (B.U j)) :
    wgt A r (extEmb σ) j (liftPt V σ y) =
      wgt A r (extEmb σ) i (liftPt V σ y) - Real.log (‖gv V.p σ B i j y‖ ^ 2) := by
  set z := liftPt V σ y
  have hzi := liftPt_mem hi
  have hzj := liftPt_mem hj
  have hz := mem_ptsIn_inf.2 ⟨hzi, hzj⟩
  have hg := gen_mem (mem_ptsIn.1 hz)
  set g := genAt A.D (under (down V (extEmb σ) z))
  have hu : UnitAt (under z) (V.φ g * (r (fun _ => j) : V.G.functionField)) := h.2.1 _ _ (mem_ptsIn.1 hzj)
  have e₁ : V.φ g * (r (fun _ => i) : V.G.functionField) =
      fnOf _ hg ((B.pull V.j).g (fun _ => i) (fun _ => j) : Γ(V.G, _)) * (V.φ g * r (fun _ => j)) := by
    rw [h.1 _ _ hg]; ring
  have e₂ : ratVal (fnOf _ hg ((B.pull V.j).g (fun _ => i) (fun _ => j) : Γ(V.G, _))) z = gv V.p σ B i j y := by
    rw [ratVal_fnOf hz]
    exact (gv_linComb (m := fun _ => y) (fun _ => (liftPt_j V σ y).symm) hzi hzj).trans (by simp)
  have hgv : gv V.p σ B i j y ≠ 0 := gv_ne_zero hi hj
  have hne : ratVal (V.φ g * (r (fun _ => j) : V.G.functionField)) z ≠ 0 := ratVal_ne_zero hu
  simp only [wgt]
  rw [e₁, ratVal_mul (regAt_fnOf (mem_ptsIn.1 hz) hg _) hu.regAt, e₂, log_normSq_mul hgv hne]
  ring

def wt (A : Adl C Y) {r : (B.pull V.j).ι → V.G.functionFieldˣ} (hB : B.IsLB) (h : V.FinInd A B r) (σ : 𝓞 F →+* ℂ) :
    Weight V.p σ B where
  isLB := hB
  φ i y := wgt A r (extEmb σ) i (liftPt V σ y)
  trans i j y hi hj := wgt_trans A h σ i j y hi hj

theorem wt_φ (A : Adl C Y) {r : (B.pull V.j).ι → V.G.functionFieldˣ} (hB : B.IsLB) (h : V.FinInd A B r)
    (σ : 𝓞 F →+* ℂ) (i : B.ι) (y : CxPts V.p σ) : (wt A hB h σ).φ i y = wgt A r (extEmb σ) i (liftPt V σ y) := rfl

end GlobalTheory.Mean4O.HermCover

namespace GlobalTheory.Mean4O.HermCover
end GlobalTheory.Mean4O.HermCover

namespace GlobalTheory.Mean4O.HermCover
end GlobalTheory.Mean4O.HermCover

namespace GlobalTheory.Mean4O.HermCover
end GlobalTheory.Mean4O.HermCover

namespace GlobalTheory.Mean4O.HermCover

end GlobalTheory.Mean4O.HermCover
