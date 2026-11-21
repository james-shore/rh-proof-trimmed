import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

private theorem frame_mul {X : Scheme.{0}} {F : X.Modules} {U : X.Opens} {n : Type} [Fintype n]
    [DecidableEq n] {e : n → Γ(F, U)} (he : VB.IsFrame e) (M : Matrix n n Γ(X, U)) (hM : IsUnit M) :
    VB.IsFrame fun j => ∑ i, M i j • e i := by
  intro V h
  have hM' : IsUnit ((resG X h).mapMatrix M) := hM.map _
  have hb : Function.Bijective ((resG X h).mapMatrix M).mulVec :=
    ⟨Matrix.mulVec_injective_of_isUnit hM', Matrix.mulVec_surjective_iff_isUnit.2 hM'⟩
  have key : ⇑(Fintype.linearCombination Γ(X, V) fun j => GlobalTheory.Twist.resM F h (∑ i, M i j • e i)) =
      (Fintype.linearCombination Γ(X, V) fun i => GlobalTheory.Twist.resM F h (e i)) ∘
        ((resG X h).mapMatrix M).mulVec := by
    funext a
    simp only [Function.comp_apply, Fintype.linearCombination_apply, map_sum, GlobalTheory.Twist.resM_smul,
      Matrix.mulVec, dotProduct, Finset.sum_smul, Finset.smul_sum, smul_smul,
      RingHom.mapMatrix_apply, Matrix.map_apply]
    rw [Finset.sum_comm]
    simp only [mul_comm]
  rw [key]
  exact (he V h).comp hb

