import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsIsComplEigenSubOfValuationRing
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.DetCondTensorDefinite
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.RootFrame

section SlopeTestRemainingChoices

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}

private noncomputable def actZ (Dw : Datum H) : 𝓞 E →+* Module.End ℤ Dw.La := (Algebra.lsmul ℤ ℤ Dw.La).toRingHom

private theorem flat_of_pid (V V' : Type) [CommRing V] [IsDomain V] [IsPrincipalIdealRing V] [CommRing V'] [IsDomain V']
    [Algebra V V'] [FaithfulSMul V V'] : Module.Flat V V' :=
  Module.Flat.flat_iff_torsion_eq_bot_of_isBezout.2
    (Submodule.isTorsionFree_iff_torsion_eq_bot.1
      (Module.isTorsionFree_iff_algebraMap_injective.2 (FaithfulSMul.algebraMap_injective V V')))

private theorem finrank_eig (Dw : Datum H) [Module.Finite ℤ Dw.La] [Module.Free ℤ Dw.La] {V : Type} [CommRing V]
    [IsDomain V] [IsPrincipalIdealRing V] (io : V →+* ℂ) (hin : Function.Injective io) (σ : 𝓞 E →+* V) :
    Module.finrank V (EigenSplit.eigenSub (EigenSplit.baseChangeAction V (actZ Dw)) σ) = Dw.p + Dw.q := by
  letI : Algebra V ℂ := io.toAlgebra
  have : FaithfulSMul V ℂ := (faithfulSMul_iff_algebraMap_injective _ _).2 hin
  have : Module.Flat V ℂ := flat_of_pid V ℂ
  have hF := EigenSplit.finrank_eigenSub_of_flat (R := V) (R' := ℂ) (ρ := EigenSplit.baseChangeAction V (actZ Dw))
    (ρ' := EigenSplit.baseChangeAction ℂ (actZ Dw)) (f := EigenSplit.extendTensor ℤ V ℂ Dw.La)
    (EigenSplit.extendTensor_equivariant V ℂ (actZ Dw)) (EigenSplit.isBaseChange_extendTensor ℤ V ℂ Dw.La) σ
  have hT := TensorDet.finrank_eigenSub (E := E) (k := ℂ) (O := ℤ) (M := Dw.La)
    ((algebraMap V ℂ).comp σ) (RingHom.ext_int _ _)
  have e : TensorDet.rightAction ℂ ℤ (𝓞 E) Dw.La = EigenSplit.baseChangeAction ℂ (actZ Dw) := rfl
  rw [e, hF, Dw.rank] at hT
  exact hT

end SlopeTestRemainingChoices

