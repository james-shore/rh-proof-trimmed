module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivConstClosedPts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlgHomExtLocalization
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleFactorOfIndEtAtPrimeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStrictHenselisation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndEtaleLocalizedPiecesTrans
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStrictHenselisationOfDirectedUnion
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsorsTrivialIff
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.PUnit
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
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
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMaximalOverClosedPointClosedFibre
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecialisationToStrictlyHenselian

@[expose] public section

open IsLocalRing Polynomial

noncomputable section

namespace GlobalTheory.VertUnits

private theorem isSeparable_apply_of_etale (R A K L : Type) [CommRing R] [CommRing A] [Field K]
    [Field L] [Algebra R A] [Algebra.Etale R A] [Algebra R K] [Algebra K L] [Algebra R L]
    [IsScalarTower R K L] (h : A →ₐ[R] L) (a : A) : IsSeparable K (h a) := by
  let H : TensorProduct R K A →ₐ[K] L :=
    Algebra.TensorProduct.lift (Algebra.ofId K L) h (fun _ _ => Commute.all _ _)
  let f := Ideal.kerLiftAlg H
  have hf : Function.Injective f := Ideal.kerLiftAlg_injective H
  have : (RingHom.ker H).IsPrime := RingHom.ker_isPrime (H : TensorProduct R K A →+* L)
  have : Algebra.Etale K (TensorProduct R K A) := inferInstance
  have : Algebra.EssFiniteType K (TensorProduct R K A) := inferInstance
  have hx : f (Ideal.Quotient.mk _ (Algebra.TensorProduct.includeRight a)) = h a := by
    simp [f, H]
  rw [← hx]
  show (minpoly K (f _)).Separable
  rw [minpoly.algHom_eq f hf]
  exact Algebra.IsSeparable.isSeparable K _

private theorem sh_at {T E : Type} [CommRing T] [IsDomain T] [IsLocalRing T] [CommRing E]
    [Algebra (Polynomial T) E] [Algebra T E] [IsScalarTower T (Polynomial T) E]
    [Algebra.Etale (Polynomial T) E] (y : Ideal E) [y.IsPrime] :
    ∃ (S : Type) (_ : CommRing S) (_ : IsLocalRing S) (_ : Algebra E S) (_ : Algebra T S)
      (_ : IsScalarTower T E S) (_ : Algebra (Polynomial T) S) (_ : IsScalarTower T (Polynomial T) S)
      (_ : IsScalarTower (Polynomial T) E S),
      (IsLocalRing.maximalIdeal S).comap (algebraMap E S) = y ∧ Module.Flat E S ∧
      GlobalTheory.LocAcyc.LocPiecesEtale E S ∧
      ∃ φ : Localization.AtPrime (y.comap (algebraMap (Polynomial T) E)) →+* S,
        φ.comp (algebraMap (Polynomial T) _) = algebraMap (Polynomial T) S ∧
        GlobalTheory.IndefiniteRowSideFullHecke.ProjectiveSpaceOverSpec.IsStrictHenselisation φ := by
  let L := Localization.AtPrime y
  let Ω := SeparableClosure (IsLocalRing.ResidueField L)
  obtain ⟨S, _, _, _, hloc, hsep, hflat, -, -, hpieces⟩ := GlobalTheory.exists_strictHenselisation L Ω
  have : IsSepClosed (IsLocalRing.ResidueField S) := hsep
  let _ : Algebra E S := ((algebraMap L S).comp (algebraMap E L)).toAlgebra
  have hELS : IsScalarTower E L S := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  let _ : Algebra (Polynomial T) S :=
    ((algebraMap E S).comp (algebraMap (Polynomial T) E)).toAlgebra
  let _ : Algebra T S := ((algebraMap E S).comp (algebraMap T E)).toAlgebra
  have hTES : IsScalarTower T E S := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have hPES : IsScalarTower (Polynomial T) E S := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have hTPS : IsScalarTower T (Polynomial T) S := IsScalarTower.of_algebraMap_eq (fun x => by
    change algebraMap E S (algebraMap T E x) =
      algebraMap E S (algebraMap (Polynomial T) E (algebraMap T (Polynomial T) x))
    rw [IsScalarTower.algebraMap_apply T (Polynomial T) E x])
  have hPLS : IsScalarTower (Polynomial T) L S := IsScalarTower.of_algebraMap_eq (fun x => by
    rw [IsScalarTower.algebraMap_apply (Polynomial T) E L x]
    rfl)
  have hmax : (IsLocalRing.maximalIdeal S).comap (algebraMap E S) = y := by
    rw [IsScalarTower.algebraMap_eq E L S, ← Ideal.comap_comap,
      IsLocalRing.maximalIdeal_comap (algebraMap L S)]
    exact IsLocalization.AtPrime.under_maximalIdeal L y
  have hflatE : Module.Flat E S := Module.Flat.trans E L S
  have hLE : ∃ (ι : Type) (_ : Preorder ι) (_ : IsDirected ι (· ≤ ·)) (_ : Nonempty ι)
      (Si : ι → Subalgebra E L), Monotone Si ∧ (∀ s : L, ∃ i, s ∈ Si i) ∧
      ∀ i, ∃ (A : Type) (_ : CommRing A) (_ : Algebra E A) (_ : Algebra.Etale E A) (q : Ideal A)
        (_ : q.IsPrime), Nonempty (Localization.AtPrime q ≃ₐ[E] Si i) :=
    ⟨Unit, inferInstance, inferInstance, inferInstance, fun _ => ⊤, monotone_const,
      fun _ => ⟨(), Algebra.mem_top⟩,
      fun _ => ⟨E, inferInstance, inferInstance, inferInstance, y, inferInstance,
        ⟨Subalgebra.topEquiv.symm⟩⟩⟩
  have hLP : ∃ (ι : Type) (_ : Preorder ι) (_ : IsDirected ι (· ≤ ·)) (_ : Nonempty ι)
      (Si : ι → Subalgebra (Polynomial T) L), Monotone Si ∧ (∀ s : L, ∃ i, s ∈ Si i) ∧
      ∀ i, ∃ (A : Type) (_ : CommRing A) (_ : Algebra (Polynomial T) A)
        (_ : Algebra.Etale (Polynomial T) A) (q : Ideal A)
        (_ : q.IsPrime), Nonempty (Localization.AtPrime q ≃ₐ[Polynomial T] Si i) :=
    ⟨Unit, inferInstance, inferInstance, inferInstance, fun _ => ⊤, monotone_const,
      fun _ => ⟨(), Algebra.mem_top⟩,
      fun _ => ⟨E, inferInstance, inferInstance, inferInstance, y, inferInstance,
        ⟨Subalgebra.topEquiv.symm⟩⟩⟩
  have hpE : GlobalTheory.LocAcyc.LocPiecesEtale E S := GlobalTheory.indEtale_localPieces_trans E L S hLE hpieces
  obtain ⟨P, _, φ, hφ, hsh⟩ := GlobalTheory.StrictHensUnion.isStrictHenselisation_of_directed_union T S
    (GlobalTheory.indEtale_localPieces_trans (Polynomial T) L S hLP hpieces)
  have hP : P = y.comap (algebraMap (Polynomial T) E) := by
    have : IsLocalHom φ := hsh.2.2.1
    rw [← hmax, Ideal.comap_comap, ← IsScalarTower.algebraMap_eq, ← hφ, ← Ideal.comap_comap,
      IsLocalRing.maximalIdeal_comap φ]
    exact (IsLocalization.AtPrime.under_maximalIdeal (Localization.AtPrime P) P).symm
  subst hP
  exact ⟨S, inferInstance, inferInstance, inferInstance, inferInstance, hTES, inferInstance, hTPS,
    hPES, hmax, hflatE, hpE, φ, hφ, hsh⟩

private theorem stage : ∀ (T O : Type) [CommRing T] [CommRing O] [Algebra T O]
    [Algebra (Polynomial T) O] [IsScalarTower T (Polynomial T) O]
    (P : Ideal (Polynomial T)) [P.IsPrime] (φ : Localization.AtPrime P →+* O),
    φ.comp (algebraMap (Polynomial T) _) = algebraMap (Polynomial T) O →
    GlobalTheory.IndefiniteRowSideFullHecke.ProjectiveSpaceOverSpec.IsIndEtale φ →
    ∀ (b c : O) (s : T), b * c = algebraMap T O s →
    ∃ (E : Type) (_ : CommRing E) (_ : Algebra (Polynomial T) E) (_ : Algebra T E)
      (_ : IsScalarTower T (Polynomial T) E) (_ : Algebra.Etale (Polynomial T) E)
      (ψ : E →ₐ[Polynomial T] O) (g g' : E),
      ψ g = b ∧ ψ g' = c ∧ g * g' = algebraMap T E s := by
  intro T O _ _ _ _ _ P _ φ hφ hind b c s hbc
  let r : MvPolynomial (Fin 2) (Polynomial T) :=
    MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C (Polynomial.C s)
  let Z := MvPolynomial (Fin 2) (Polynomial T) ⧸ Ideal.span {r}
  have : Algebra.FinitePresentation (Polynomial T) Z :=
    Algebra.FinitePresentation.quotient (Submodule.fg_span_singleton r)
  let g0 : MvPolynomial (Fin 2) (Polynomial T) →ₐ[Polynomial T] O := MvPolynomial.aeval ![b, c]
  have hg0 : ∀ a ∈ Ideal.span {r}, g0 a = 0 := by
    intro a ha
    obtain ⟨q, rfl⟩ := Ideal.mem_span_singleton'.mp ha
    simp only [g0, r, map_mul, map_sub, MvPolynomial.aeval_X, MvPolynomial.aeval_C,
      Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_fin_one, hbc,
      IsScalarTower.algebraMap_apply T (Polynomial T) O s, Polynomial.algebraMap_eq, sub_self,
      mul_zero]
  let gZ : Z →ₐ[Polynomial T] O := Ideal.Quotient.liftₐ _ g0 hg0
  obtain ⟨W, _, _, _, u, v, huv⟩ := GlobalTheory.T.exists_etale_factorization_of_isIndEtale (Polynomial T) O P φ hφ hind Z gZ
  let _ : Algebra T W := ((algebraMap (Polynomial T) W).comp (algebraMap T (Polynomial T))).toAlgebra
  have hW : IsScalarTower T (Polynomial T) W := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  let x₀ : Z := Ideal.Quotient.mk _ (MvPolynomial.X 0)
  let x₁ : Z := Ideal.Quotient.mk _ (MvPolynomial.X 1)
  have hv : ∀ z : Z, v (u z) = gZ z := fun z => by rw [← AlgHom.comp_apply, huv]
  refine ⟨W, inferInstance, inferInstance, inferInstance, hW, inferInstance, v, u x₀, u x₁,
    ?_, ?_, ?_⟩
  · rw [hv]
    change g0 (MvPolynomial.X 0) = b
    simp [g0]
  · rw [hv]
    change g0 (MvPolynomial.X 1) = c
    simp [g0]
  · have hx : x₀ * x₁ = algebraMap (Polynomial T) Z (Polynomial.C s) := by
      rw [← Ideal.Quotient.mk_algebraMap, ← map_mul]
      refine Ideal.Quotient.eq.mpr (Ideal.subset_span ?_)
      rw [Set.mem_singleton_iff, MvPolynomial.algebraMap_eq]
    rw [← map_mul, hx, u.commutes]
    rfl

theorem divConstGeneric_of_divConstClosedPts : DivConstClosedPts → DivConstGeneric := by
  intro hcl T O _ _ _ _ _ _ _ _ hT P _ φ hφ hsh hPm hPgen b c s hs hbc
  obtain ⟨hHen, hSep, hloc, hind⟩ := hsh
  obtain ⟨E, _, _, _, _, _, ψ, g, g', hg, hg', hgg⟩ := stage T O P φ hφ hind b c s hbc
  let _ : Algebra E O := ψ.toRingHom.toAlgebra
  have hEO : ∀ e : E, algebraMap E O e = ψ e := fun _ => rfl
  let Q : Ideal E := (maximalIdeal O).comap (algebraMap E O)
  have : Q.IsPrime := Ideal.comap_isPrime _ _
  have hQP : Q.comap (algebraMap (Polynomial T) E) =
      (maximalIdeal T).map (Polynomial.C : T →+* Polynomial T) := by
    rw [← hPgen]
    ext p
    have h1 : algebraMap E O (algebraMap (Polynomial T) E p) =
        φ (algebraMap (Polynomial T) (Localization.AtPrime P) p) := by
      rw [hEO, ψ.commutes, ← hφ, RingHom.comp_apply]
    simp only [Q, Ideal.mem_comap, h1, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      isUnit_map_iff φ]
    rw [← mem_nonunits_iff, ← IsLocalRing.mem_maximalIdeal]
    exact IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P) P p
  obtain ⟨y, hymax, hQy, hyne, hyT⟩ := _root_.GlobalTheory.exists_maximal_over_closedPt T E Q hQP
  have : y.IsPrime := hymax.isPrime
  obtain ⟨S, _, _, _, _, _, _, _, _, hSy, hflat, hpieces, φ', hφ', hsh'⟩ := sh_at (T := T) (E := E) y
  have hdiv : DivConst T S := hcl T S hT _ φ' hφ' hsh' hyT hyne
  obtain ⟨a, w, ha⟩ := hdiv (algebraMap E S g) (algebraMap E S g') s hs (by
    rw [← map_mul, hgg, ← IsScalarTower.algebraMap_apply])
  have : HenselianLocalRing O := hHen
  have : IsSepClosed (IsLocalRing.ResidueField O) := hSep
  obtain ⟨χ⟩ := _root_.GlobalTheory.Specialise.specialisation_exists E S O Q y hQy hSy rfl hflat hpieces
  refine ⟨a, Units.map χ.toRingHom.toMonoidHom w, ?_⟩
  have hχT : χ (algebraMap T S a) = algebraMap T O a := by
    rw [IsScalarTower.algebraMap_apply T E S, χ.commutes, hEO,
      IsScalarTower.algebraMap_apply T (Polynomial T) E, ψ.commutes,
      ← IsScalarTower.algebraMap_apply]
  calc b = ψ g := hg.symm
    _ = χ (algebraMap E S g) := by rw [χ.commutes, hEO]
    _ = algebraMap T O a * χ w := by rw [ha, map_mul, hχT]
    _ = _ := rfl

end GlobalTheory.VertUnits
