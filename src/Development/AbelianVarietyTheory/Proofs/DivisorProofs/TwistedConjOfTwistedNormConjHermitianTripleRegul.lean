module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRootSelectionUnitaryRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolySubComm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMatrixAdjoinTensorUnramifiedOfCommuteSeparStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTripleFrobeniusTwistOrderFixedPointsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.Hilbert90TensorPadicUnramifiedExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatrixAdjoinTensorUnramifiedToMatrixInjectiveStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedConjOfTwistedNormEqGLOneUnramifiedStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedNormConjNormalizeAndDegreeOneStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedNormProductIterateTwistedConjStatement
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

noncomputable section

open Matrix NumberField GlobalTheory.LKTrip GlobalTheory.LKRes GlobalTheory.LKMid GlobalTheory.LKCount
open scoped TensorProduct Classical

namespace GlobalTheory.NrmUnique

theorem nrmG_inv {H : Type} [CommGroup H] (θ : H →* H) (r : ℕ) (a : H) :
    nrmG θ r a⁻¹ = (nrmG θ r a)⁻¹ := by
  refine eq_inv_of_mul_eq_one_left ?_
  rw [← _root_.GlobalTheory.LKMid.twistedNormProductIterate_mul_commGroup, inv_mul_cancel]
  simp [nrmG, iterate_map_one]

theorem gl_one_mul_comm {R : Type} [CommRing R] (a b : GL (Fin 1) R) : a * b = b * a := by
  ext i j
  fin_cases i; fin_cases j
  simp [Matrix.mul_apply, mul_comm]

theorem twConj_place (p : ℕ) [Fact p.Prime] (r : ℕ) (hr : 0 < r) (K : IntermediateField ℚ_[p] (PadicAlgCl p))
    [FiniteDimensional ℚ_[p] K] (n : ℕ) (γ : GL (Fin n) K) (hγ : γ.val.charpoly.Separable)
    (δ δ' : GL (Fin n) (KQ p K r))
    (hc : Commute δ.val (γ.val.map (inclK p K r))) (hc' : Commute δ'.val (γ.val.map (inclK p K r)))
    (hN : nrmG (sigRes p K n r) r δ = nrmG (sigRes p K n r) r δ') :
    ∃ h : GL (Fin n) (KQ p K r), δ' = h⁻¹ * δ * sigRes p K n r h ∧
      ∀ y : GL (Fin n) K, Commute y.val γ.val → Commute h.val (y.val.map (inclK p K r)) := by
  have hinj := _root_.GlobalTheory.PolyTensor.phi_injective p K n r γ.val hr
  have lift : ∀ d : GL (Fin n) (KQ p K r), Commute d.val (γ.val.map (inclK p K r)) →
      ∃ u : (GlobalTheory.PolyTensor.PolyAlg p K n γ.val ⊗[ℚ_[p]] Qr p r)ˣ,
        GlobalTheory.PolyTensor.phi p K n γ.val r u = d.val := by
    intro d hd
    obtain ⟨x, hx⟩ := _root_.GlobalTheory.PolyTensorCommutant.exists_phi_eq p K n r γ.val hr hγ d.val hd
    obtain ⟨x', hx'⟩ := _root_.GlobalTheory.PolyTensorCommutant.exists_phi_eq p K n r γ.val hr hγ (d⁻¹).val (Commute.units_inv_left hd)
    have h1 : x * x' = 1 := hinj (by rw [map_mul, map_one, hx, hx']; exact d.mul_inv)
    exact ⟨⟨x, x', h1, by rw [mul_comm]; exact h1⟩, hx⟩
  obtain ⟨u, hu⟩ := lift δ hc
  obtain ⟨u', hu'⟩ := lift δ' hc'
  let Φ : (GlobalTheory.PolyTensor.PolyAlg p K n γ.val ⊗[ℚ_[p]] Qr p r)ˣ →* GL (Fin n) (KQ p K r) :=
    Units.map (GlobalTheory.PolyTensor.phi p K n γ.val r).toMonoidHom
  let τ : (GlobalTheory.PolyTensor.PolyAlg p K n γ.val ⊗[ℚ_[p]] Qr p r)ˣ →* (GlobalTheory.PolyTensor.PolyAlg p K n γ.val ⊗[ℚ_[p]] Qr p r)ˣ :=
    Units.map (Algebra.TensorProduct.map (AlgHom.id ℚ_[p] (GlobalTheory.PolyTensor.PolyAlg p K n γ.val)) (frobQ p r)).toRingHom.toMonoidHom
  have hΦ : ∀ a, Φ (τ a) = sigRes p K n r (Φ a) := fun a =>
    Units.ext (GlobalTheory.PolyTensor.phi_tw p K n γ.val r a)
  have hΦinj : Function.Injective Φ := fun a b h => Units.ext (hinj (congrArg Units.val h))
  have hδ : Φ u = δ := Units.ext hu
  have hδ' : Φ u' = δ' := Units.ext hu'
  have hNu : nrmG τ r u = nrmG τ r u' :=
    hΦinj (by rw [_root_.GlobalTheory.LKMid.twistedNormProductIterate_map_intertwining τ _ Φ hΦ, _root_.GlobalTheory.LKMid.twistedNormProductIterate_map_intertwining τ _ Φ hΦ, hδ, hδ', hN])
  have hn1 : nrmG τ r (u' * u⁻¹) = 1 := by rw [_root_.GlobalTheory.LKMid.twistedNormProductIterate_mul_commGroup, nrmG_inv, hNu, mul_inv_cancel]
  obtain ⟨g, hg⟩ := _root_.GlobalTheory.LKMid.hilbert90_frobenius_tensor_unramified_padic p r hr (GlobalTheory.PolyTensor.PolyAlg p K n γ.val) (u' * u⁻¹) hn1
  have hu'g : u' = g⁻¹ * u * τ g := by
    calc u' = (u' * u⁻¹) * u := by group
      _ = g⁻¹ * τ g * u := by rw [hg]
      _ = g⁻¹ * u * τ g := by rw [mul_assoc, mul_comm (τ g) u, ← mul_assoc]
  refine ⟨Φ g, ?_, fun y hy => ?_⟩
  · rw [← hδ', ← hδ, hu'g, map_mul, map_mul, map_inv, hΦ]
  · exact (GlobalTheory.PolyTensor.phi_commute p K n γ.val r y.val hy (g : _)).symm

theorem nrm_unique : ∀ (p : ℕ) [Fact p.Prime] (G : HTGroup p) (r : ℕ) (γ : Gp G) (δ z δ' z' : Gr G r), 0 < r →
    regular₂ G γ → IsNrm G r γ δ z → IsNrm G r γ δ' z' → ∃ g : Gr G r, δ' = g⁻¹ * δ * sigG G r g ∧
      ∀ y ∈ Subgroup.centralizer {γ}, carry G r z' y = g⁻¹ * carry G r z y * g := by
  intro p _ G r γ δ z δ' z' hr hreg h h'
  obtain ⟨hex, -⟩ := _root_.GlobalTheory.nrm_exact p G
  obtain ⟨hit, hfix, -, -⟩ := _root_.GlobalTheory.LKMid.SigIter.main p G r hr
  set d := z * δ * (sigG G r z)⁻¹ with hd
  set d' := z' * δ' * (sigG G r z')⁻¹ with hd'
  have hN : nrmG (sigG G r) r d = inclG G r γ := by
    have := hex r γ δ z hr h
    simpa [IsNrm] using this
  have hN' : nrmG (sigG G r) r d' = inclG G r γ := by
    have := hex r γ δ' z' hr h'
    simpa [IsNrm] using this
  have comm : ∀ e, nrmG (sigG G r) r e = inclG G r γ → e * inclG G r γ = inclG G r γ * e := by
    intro e he
    have := (_root_.GlobalTheory.LKMid.nrmG_twConj (sigG G r) r e 1).2
    rw [he, hfix, hit] at this
    exact this
  have hc := comm d hN
  have hc' := comm d' hN'
  have key : ∀ (w : Fin G.m) (e : Gr G r),
      (nrmG (sigG G r) r e).2 w = nrmG (sigRes p (G.Fw w) G.n r) r (e.2 w) := fun w e =>
    _root_.GlobalTheory.LKMid.twistedNormProductIterate_map_intertwining (sigG G r) (sigRes p (G.Fw w) G.n r) ((Pi.evalMonoidHom _ w).comp (MonoidHom.snd _ _))
      (fun _ => rfl) r e
  have key1 : ∀ e : Gr G r, (nrmG (sigG G r) r e).1 = nrmG (GlobalTheory.LKLoc.sig p (Q0 p) 1 r) r e.1 := fun e =>
    _root_.GlobalTheory.LKMid.twistedNormProductIterate_map_intertwining (sigG G r) (GlobalTheory.LKLoc.sig p (Q0 p) 1 r) (MonoidHom.fst _ _) (fun _ => rfl) r e
  have hNw : ∀ w, nrmG (sigRes p (G.Fw w) G.n r) r (d.2 w) = nrmG (sigRes p (G.Fw w) G.n r) r (d'.2 w) :=
    fun w => by rw [← key, ← key, hN, hN']
  have hN1 : nrmG (GlobalTheory.LKLoc.sig p (Q0 p) 1 r) r d.1 = nrmG (GlobalTheory.LKLoc.sig p (Q0 p) 1 r) r d'.1 := by
    rw [← key1, ← key1, hN, hN']
  have hcw : ∀ (e : Gr G r), e * inclG G r γ = inclG G r γ * e →
      ∀ w, Commute (e.2 w).val ((γ.2 w).val.map (inclK p (G.Fw w) r)) := by
    intro e he w
    have := congrArg (fun x : Gr G r => (x.2 w).val) he
    exact this
  choose H hH hHc using fun w => twConj_place p r hr (G.Fw w) G.n (γ.2 w) (hreg w) (d.2 w) (d'.2 w)
    (hcw d hc w) (hcw d' hc' w) (hNw w)
  obtain ⟨h0, hh0⟩ := _root_.GlobalTheory.LKMid.exists_sig_twisted_conj_of_nrmG_eq p r hr d.1 d'.1 hN1
  let hh : Gr G r := (h0, H)
  have hdd : d' = hh⁻¹ * d * sigG G r hh := Prod.ext hh0 (funext hH)
  have hcomm : ∀ y ∈ Subgroup.centralizer {γ}, hh * inclG G r y = inclG G r y * hh := by
    intro y hy
    have hy' : γ * y = y * γ := Subgroup.mem_centralizer_iff.1 hy γ rfl
    refine Prod.ext (gl_one_mul_comm _ _) (funext fun w => ?_)
    have hyw : Commute (y.2 w).val (γ.2 w).val := by
      have := congrArg (fun x : Gp G => (x.2 w).val) hy'
      exact this.symm
    exact Units.ext (hHc w (y.2 w) hyw)
  refine ⟨z⁻¹ * hh * z', ?_, fun y hy => ?_⟩
  · have e1 : δ' = z'⁻¹ * d' * sigG G r z' := by rw [hd']; group
    rw [e1, hdd, hd]
    simp only [map_mul, map_inv]
    group
  · have h2 : hh⁻¹ * inclG G r y * hh = inclG G r y := by
      rw [mul_assoc, ← hcomm y hy, inv_mul_cancel_left]
    simp only [carry, MonoidHom.comp_apply, MulEquiv.coe_toMonoidHom, MulAut.conj_apply, inv_inv]
    rw [show (z⁻¹ * hh * z')⁻¹ * (z⁻¹ * inclG G r y * z) * (z⁻¹ * hh * z') =
      z'⁻¹ * (hh⁻¹ * inclG G r y * hh) * z' by group, h2]

end GlobalTheory.NrmUnique
