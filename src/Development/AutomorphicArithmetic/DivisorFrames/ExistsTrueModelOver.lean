import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsModelRefinementGeneratingStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineStableLieEigenspaceFrameStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TangentSectionsOnNormalModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelOfLocMax
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNormalModelOverProjectiveStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineTangentBasisLocallyStatement

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

private theorem exists_leftInv {R : Type} [CommRing R] [IsLocalRing R] {m g : ℕ} (a : Fin m → Fin g → R)
    (h : LinearIndependent (IsLocalRing.ResidueField R) fun l i => IsLocalRing.residue R (a l i)) :
    ∃ a' : Matrix (Fin m) (Fin g) R, a' * (Matrix.of fun k l => a l k) = 1 := by
  obtain ⟨s, hs⟩ := GlobalTheory.LineNorm.Chart.exists_minor_ne_zero _ h le_rfl
  rw [← GlobalTheory.LineNorm.Chart.map_minor, IsLocalRing.residue_ne_zero_iff_isUnit] at hs
  let A : Matrix (Fin g) (Fin m) R := Matrix.of fun k l => a l k
  have hu : IsUnit (A.submatrix s id).det := by
    rw [← Matrix.det_transpose]; exact hs
  refine ⟨(A.submatrix s id)⁻¹ * (1 : Matrix (Fin g) (Fin g) R).submatrix s id, ?_⟩
  have e1 : (1 : Matrix (Fin g) (Fin g) R).submatrix s id * A = A.submatrix s id := by
    conv_rhs => rw [← Matrix.one_mul A]
    rfl
  rw [Matrix.mul_assoc]
  exact (congrArg _ e1).trans (Matrix.nonsing_inv_mul _ hu)

