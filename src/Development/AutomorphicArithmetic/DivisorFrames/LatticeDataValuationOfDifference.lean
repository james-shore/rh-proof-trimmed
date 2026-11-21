import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.InertiaRamification.FieldDefs
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeC
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapPairDetCovec
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilIsGrpPullbackOfCommute
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPushEquiv

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.RootFrame

section SlopeTestRemainingChoices

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H)

private theorem skewK {K : Type} [CommRing K] (u v : K ⊗[ℤ] Dw.La) :
    Dw.EF.baseChange K u v = -Dw.EF.baseChange K v u := by
  have skew : ∀ x y : Dw.La, Dw.EF x y = -Dw.EF y x := fun x y => by
    have := Dw.alt (x + y)
    simp only [map_add, LinearMap.add_apply, Dw.alt] at this
    linarith
  induction u using TensorProduct.induction_on with
  | zero => simp
  | add u u' h h' => simp only [map_add, LinearMap.add_apply, h, h']; ring
  | tmul k x =>
    induction v using TensorProduct.induction_on with
    | zero => simp
    | add u u' h h' => simp only [map_add, LinearMap.add_apply, h, h']; ring
    | tmul k' x' =>
      rw [LinearMap.BilinForm.baseChange_tmul, LinearMap.BilinForm.baseChange_tmul, skew x x', neg_smul, mul_comm]

private theorem adjK {K : Type} [CommRing K] (o : 𝓞 E) (u v : K ⊗[ℤ] Dw.La) :
    Dw.EF.baseChange K (((LinearMap.lsmul (𝓞 E) Dw.La o).restrictScalars ℤ).baseChange K u) v =
      Dw.EF.baseChange K u (((LinearMap.lsmul (𝓞 E) Dw.La (H.bar o)).restrictScalars ℤ).baseChange K v) := by
  induction u using TensorProduct.induction_on with
  | zero => simp
  | add u u' h h' => simp only [map_add, LinearMap.add_apply, h, h']
  | tmul k x =>
    induction v using TensorProduct.induction_on with
    | zero => simp
    | add u u' h h' => simp only [map_add, h, h']
    | tmul k' x' =>
      simp only [LinearMap.baseChange_tmul, LinearMap.BilinForm.baseChange_tmul, LinearMap.restrictScalars_apply,
        LinearMap.lsmul_apply]
      rw [Dw.adj]

private theorem torsionFree : Module.IsTorsionFree ℤ Dw.La :=
  Function.Injective.moduleIsTorsionFree Dw.EF Dw.unimod.1 (fun r x => map_smul _ r x)

private theorem expand : ∃ (n : ℕ) (e y : Fin n → Dw.La), ∀ (K : Type) [CommRing K] (w : K ⊗[ℤ] Dw.La),
    w = ∑ m, Dw.EF.baseChange K (1 ⊗ₜ y m) w • ((1 : K) ⊗ₜ[ℤ] e m) := by
  obtain ⟨N, ⟨a⟩⟩ : ∃ k : ℕ, Nonempty (Module.Basis (Fin k) ℤ Dw.La) := by
    haveI := Dw.fin
    haveI : Module.Finite ℤ Dw.La := Module.Finite.trans (𝓞 E) Dw.La
    haveI := torsionFree Dw
    haveI : Module.Free ℤ Dw.La := Module.free_of_finite_type_torsion_free'
    exact ⟨_, ⟨Module.finBasis ℤ Dw.La⟩⟩
  choose y hy using fun m' : Fin N => Dw.unimod.2 (a.coord m')
  refine ⟨N, a, y, fun K _ w => ?_⟩
  induction w using TensorProduct.induction_on with
  | zero => simp
  | add u u' h h' =>
    simp only [map_add, add_smul, Finset.sum_add_distrib]
    rw [← h, ← h']
  | tmul k x =>
    conv_lhs => rw [← a.sum_repr x, TensorProduct.tmul_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [LinearMap.BilinForm.baseChange_tmul, hy, Module.Basis.coord_apply, TensorProduct.smul_tmul', _root_.one_mul,
      smul_eq_mul, _root_.mul_one, TensorProduct.smul_tmul]

private theorem mem_span_iff {K : Type} [NormedField K] [IsUltrametricDist K] (w : K ⊗[ℤ] Dw.La) :
    w ∈ Submodule.span ↥(intO K) (Set.range fun a : Dw.La => (1 : K) ⊗ₜ[ℤ] a) ↔ ∀ b, ‖pr Dw w b‖ ≤ 1 := by
  constructor
  · intro hw b
    change pr Dw w b ∈ intO K
    induction hw using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨a, rfl⟩ := hx
      simp only [pr, LinearMap.BilinForm.baseChange_tmul, _root_.mul_one, zsmul_eq_mul]
      exact intCast_mem _ _
    | zero => simp only [pr, map_zero, LinearMap.zero_apply]; exact zero_mem _
    | add x y _ _ hx hy => simp only [pr, map_add, LinearMap.add_apply]; exact add_mem hx hy
    | smul c x _ hx =>
      have : pr Dw (c • x) b = (c : K) * pr Dw x b := by
        change pr Dw ((c : K) • x) b = _
        simp only [pr, map_smul, LinearMap.smul_apply, smul_eq_mul]
      rw [this]
      exact mul_mem c.2 hx
  · intro h
    obtain ⟨n, e, y, he⟩ := expand Dw
    rw [he K w]
    refine Submodule.sum_mem _ fun m _ => ?_
    have hm : Dw.EF.baseChange K (1 ⊗ₜ y m) w ∈ intO K := by
      rw [skewK]
      exact neg_mem (show pr Dw w (y m) ∈ intO K from h (y m))
    exact Submodule.smul_mem _ (⟨_, hm⟩ : ↥(intO K)) (Submodule.subset_span ⟨e m, rfl⟩)

end SlopeTestRemainingChoices

