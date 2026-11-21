import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ScholzeWeinsteinB
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AwayAgree
import Development.AbelianVarietyTheory.Definitions.Divisors.NatCastNeZeroG
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsNonarchimedeanW
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelLabelExtendsOfOrthogonalToExtended
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LetterConjugation
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain MvPolynomial ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.MainNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ArInt GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.VertForm GlobalTheory.TrivFlag GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.TrueCx GlobalTheory.ConstLat
open scoped Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.EqHalf

section Lattice

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H)

def latMat {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) : 𝓞 E →+* Matrix (Fin n) (Fin n) ℤ :=
  (LinearMap.toMatrixAlgEquiv b).toRingHom.comp (Module.toModuleEnd ℤ (S := 𝓞 E) Dw.La)

theorem latMat_apply {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) (a : 𝓞 E) (i j : Fin n) :
    latMat Dw b a i j = b.repr (a • b j) i := by
  simp [latMat, LinearMap.toMatrixAlgEquiv_apply]

def gram {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) : Matrix (Fin n) (Fin n) ℤ := Matrix.of fun m m' => Dw.EF (b m) (b m')

def chiAct {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) : 𝓞 E →+* Matrix (Fin n) (Fin n) ℤ where
  toFun a := (latMat Dw b (H.bar a)).transpose
  map_one' := by simp
  map_mul' a a' := by
    show (latMat Dw b (H.bar (a * a'))).transpose = (latMat Dw b (H.bar a)).transpose * (latMat Dw b (H.bar a')).transpose
    rw [← Matrix.transpose_mul, ← map_mul (latMat Dw b), ← map_mul H.bar, mul_comm a' a]
  map_zero' := by simp
  map_add' a a' := by simp [Matrix.transpose_add]

end Lattice

end GlobalTheory.EqHalf

namespace GlobalTheory.EqHalf

section LatticeThm

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H)

theorem isUnit_det_gram {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) : IsUnit (gram Dw b).det := by
  let e : Dw.La ≃ₗ[ℤ] Module.Dual ℤ Dw.La := LinearEquiv.ofBijective Dw.EF Dw.unimod
  have h := LinearEquiv.isUnit_det e b b.dualBasis
  have hm : LinearMap.toMatrix b b.dualBasis (e : Dw.La →ₗ[ℤ] Module.Dual ℤ Dw.La) = (gram Dw b).transpose := by
    ext i j
    simp [LinearMap.toMatrix_apply, gram, e]
  rw [hm, Matrix.det_transpose] at h
  exact h

theorem latMat_transpose_mul_gram {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) (a : 𝓞 E) :
    (latMat Dw b a).transpose * gram Dw b = gram Dw b * latMat Dw b (H.bar a) := by
  ext i j
  simp only [Matrix.mul_apply, Matrix.transpose_apply, latMat_apply, gram, Matrix.of_apply]
  have h1 : Dw.EF (a • b i) (b j) = ∑ m, b.repr (a • b i) m * Dw.EF (b m) (b j) := by
    conv_lhs => rw [← b.sum_repr (a • b i)]
    simp only [map_sum, LinearMap.sum_apply, map_zsmul, LinearMap.smul_apply, smul_eq_mul]
  have h2 : Dw.EF (b i) (H.bar a • b j) = ∑ m, Dw.EF (b i) (b m) * b.repr (H.bar a • b j) m := by
    conv_lhs => rw [← b.sum_repr (H.bar a • b j)]
    simp only [map_sum, map_zsmul, smul_eq_mul, mul_comm]
  rw [← h1, ← h2, Dw.adj]

end LatticeThm

end GlobalTheory.EqHalf
