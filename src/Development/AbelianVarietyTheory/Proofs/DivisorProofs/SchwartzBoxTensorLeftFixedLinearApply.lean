module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AntiCols
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledVacuumLatticeStabilizerBigCellFactorizatiStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnipotentCornerIsUnitInertPlaceStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped TensorProduct Matrix

noncomputable section
namespace GlobalTheory.DblGenV

open Matrix GlobalTheory.DblVac

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem matD_mul {σ : E →ₐ[F] E} {d : ℕ} {W : Spc F E d} (g h : UD σ W) : matD (g * h) = matD g * matD h := rfl

theorem matD_inv_mul {σ : E →ₐ[F] E} {d : ℕ} {W : Spc F E d} (g : UD σ W) : matD g⁻¹ * matD g = 1 := by
  rw [← matD_mul, inv_mul_cancel]; rfl

alias KD_mul := _root_.GlobalTheory.DblVacFactor.KD_mul

alias KD_inv := _root_.GlobalTheory.DblVacFactor.KD_inv

theorem PDiag_inv {σ : E →ₐ[F] E} {d : ℕ} {W : Spc F E d} {p : UD σ W} (hp : p ∈ PDiag σ W) :
    p⁻¹ ∈ PDiag σ W := by
  obtain ⟨t, ht⟩ := hp
  refine ⟨t⁻¹, ?_⟩
  set D : Matrix (Fin d ⊕ Fin d) (Fin d) (AE F E) := diagCols (Fin d) with hDdef
  set T : Matrix (Fin d) (Fin d) (AE F E) := (t : Matrix (Fin d) (Fin d) (AE F E)) with hT
  set Ti : Matrix (Fin d) (Fin d) (AE F E) := ((t⁻¹ : GL (Fin d) (AE F E)) : Matrix (Fin d) (Fin d) (AE F E)) with hTi
  have hTT : T * Ti = 1 := by rw [hT, hTi, ← Units.val_mul, mul_inv_cancel, Units.val_one]
  have ht' : matD p * D = D * T := ht
  have key : matD p⁻¹ * (D * T) = D := by
    rw [← ht', ← Matrix.mul_assoc, matD_inv_mul, Matrix.one_mul]
  show matD p⁻¹ * D = D * Ti
  calc matD p⁻¹ * D = matD p⁻¹ * (D * T) * Ti := by
        rw [Matrix.mul_assoc (matD p⁻¹), Matrix.mul_assoc D, hTT, Matrix.mul_one]
    _ = D * Ti := by rw [key]

end GlobalTheory.DblGenV

namespace GlobalTheory.DblGenV

theorem mem_of_KD_diag_anti : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E)
    (a a' : ℕ) (G : Geo σ a a') (X : Chars F E) (om : Rep σ G.V G.W) (om' : Rep σ G.V' G.W), IsTriple B G X om om' →
    ∀ (v : Pl (F := F)) (w : HeightOneSpectrum (𝓞 E)), Formalism.UG.IsInertAt F E v w → v ∉ X.T → ∀ H : Subgroup (GlobalTheory.DblVac.UD σ G.V),
      (∀ p ∈ GlobalTheory.DblVac.KD σ G.V v, p ∈ GlobalTheory.DblVac.PDiag σ G.V → p ∈ H) →
      (∀ p ∈ GlobalTheory.DblVac.KD σ G.V v, p ∈ GlobalTheory.DblVac.PAnti σ G.V → p ∈ H) → ∀ g ∈ GlobalTheory.DblVac.KD σ G.V v, g ∈ H := by
  intro F E _ _ _ _ _ σ B a a' G X om om' hT v w hin _ H hD hA g hg
  have h2 : (2 : 𝓞 F) ∉ v.asIdeal := (hT.base.inert v w hin).1
  obtain ⟨u, hu, huP, hdet, hlat⟩ := _root_.GlobalTheory.InertTransv.exists_unip_corner_isUnit F E σ B a (a - G.p) G.p G.V hT.base hT.geo.hV v w hin g hg
  obtain ⟨p, q, hp, hpP, hq, hqA, hpq⟩ := _root_.GlobalTheory.DblVacFactor.factor F E σ a G.V v h2 (g * u) (KD_mul hg hu) hdet hlat
  have e : g = p * q * u⁻¹ := by rw [← hpq]; group
  rw [e]
  exact H.mul_mem (H.mul_mem (hD p hp hpP) (hA q hq hqA)) (hD _ (KD_inv hu) (PDiag_inv huP))

end GlobalTheory.DblGenV
