import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsWeilChar
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEquivStdSymp
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSpecialisationWithThetaPoint
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocallyOfFiniteTypeKer
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.Mean4O GlobalTheory.LineNorm GlobalTheory.CoverNorm GlobalTheory.HtGen GlobalTheory.TrivFlag GlobalTheory.WholeFlag
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.HalfGeo

theorem epi_spMap_field {K Ω : Type} [Field K] [Field Ω] (io : K →+* Ω) : Epi (spMap io) := by
  letI : Algebra K Ω := io.toAlgebra
  have h : (CommRingCat.ofHom io).hom.FaithfullyFlat := by
    change (algebraMap K Ω).FaithfullyFlat
    rw [RingHom.faithfullyFlat_algebraMap_iff]
    infer_instance
  obtain ⟨h1, h2⟩ := (flat_and_surjective_SpecMap_iff _).2 h
  exact Flat.epi_of_flat_of_surjective _

theorem gram_descend {S S' : Scheme.{0}} (G' : Over S') [GrpObj G'] (G : Over S) [GrpObj G] (f : S' ⟶ S)
    (φ : G'.left ⟶ G.left) (h : IsGrpPullback G' G f φ) {K Ω : Type} [Field K] [Field Ω] (io : K →+* Ω)
    (ξ₀ : Sp K ⟶ S') (q : ℕ)
    (hs : ∀ w : Over.mk (spMap io ≫ ξ₀ ≫ f) ⟶ G, w ^ q = 1 → ∃ w₀ : Sp K ⟶ G.left, spMap io ≫ w₀ = w.left)
    (a : Over.mk (spMap io ≫ ξ₀) ⟶ G') (ha : a ^ q = 1) :
    ∃ s : Over.mk ξ₀ ⟶ G', spMap io ≫ s.left = a.left := by
  haveI := epi_spMap_field io
  let T : Over S' := Over.mk (spMap io ≫ ξ₀)
  let push : (T ⟶ G') → (Over.mk (T.hom ≫ f) ⟶ G) := fun x =>
    Over.homMk (x.left ≫ φ) (by
      simp only [Over.mk_hom, Category.assoc]
      rw [h.1.w, ← Category.assoc, Over.w x])
  have hmul : ∀ x y : T ⟶ G', push (x * y) = push x * push y := by
    intro x y
    ext
    exact (h.2 T x y (push x) (push y) rfl rfl).symm
  have hone : push 1 = 1 := by
    have e : push 1 * push 1 = push 1 := by rw [← hmul, _root_.mul_one]
    simpa using e
  have hpow : ∀ (x : T ⟶ G') (k : ℕ), push (x ^ k) = push x ^ k := by
    intro x k
    induction k with
    | zero => simpa using hone
    | succ k ih => rw [pow_succ, pow_succ, hmul, ih]
  have h1 : push a ^ q = 1 := by rw [← hpow, ha, hone]
  obtain ⟨w₀, hw₀⟩ := hs (push a) h1
  have hw₀' : spMap io ≫ w₀ = a.left ≫ φ := hw₀
  have haw : a.left ≫ G'.hom = spMap io ≫ ξ₀ := Over.w a
  have hb : w₀ ≫ G.hom = ξ₀ ≫ f := by
    rw [← cancel_epi (spMap io), ← Category.assoc, hw₀', Category.assoc, h.1.w, ← Category.assoc, haw, Category.assoc]
  refine ⟨Over.homMk (h.1.lift w₀ ξ₀ hb) (h.1.lift_snd _ _ _), ?_⟩
  change spMap io ≫ h.1.lift w₀ ξ₀ hb = a.left
  refine h.1.hom_ext ?_ ?_
  · rw [Category.assoc, h.1.lift_fst, hw₀']
  · rw [Category.assoc, h.1.lift_snd, haw]

end GlobalTheory.HalfGeo
