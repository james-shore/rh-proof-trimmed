import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFinsetOfEventually
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LintegralFintypeProdEqProd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdemSmulUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaStabilizerExists
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsUniqueIsProdMeasureFinAway
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyCompFinMemIntLocAdele
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitIdelesOpen
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdelesCompactOfLocalBounds

open scoped TensorProduct NNReal Matrix ENNReal
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.ConeEuler
open GlobalTheory.Doubling (absE absEv unitFin ideleAt)

noncomputable section

namespace GlobalTheory.ThK.EulerMeas

end GlobalTheory.ThK.EulerMeas

namespace GlobalTheory.ThK.EulerMeas

end GlobalTheory.ThK.EulerMeas

namespace GlobalTheory.ThK.EulerMeas

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {X : Spc F E n} {K : Subgroup (UA σ X.J)}

def kArch (hK : ∀ k ∈ K, compArch σ X.J k ∈ K) : K →* KAt K (evI F) :=
  ((compArch σ X.J).comp K.subtype).codRestrict (KAt K (evI F)) fun k => ⟨hK k.1 k.2, compArch_mem k.1⟩

def kAt (hK : ∀ k ∈ K, ∀ v, compAt σ X.J v k ∈ K) (v : Pl F) : K →* KAt K (evFin F v) :=
  ((compAt σ X.J v).comp K.subtype).codRestrict (KAt K (evFin F v)) fun k => ⟨hK k.1 k.2 v, compAt_mem v k.1⟩

variable (F E) in

def lArch : (AE F E)ˣ →* idelesAt E (evI F) := (unitArch F E).codRestrict _ unitArch_mem

variable (E) in

def lAt (v : Pl F) : (AE F E)ˣ →* idelesAt E (evFin F v) := (unitAt E v).codRestrict _ (unitAt_mem v)

@[simp] theorem kArch_val (hK : ∀ k ∈ K, compArch σ X.J k ∈ K) (k : K) : (kArch hK k).1 = compArch σ X.J k.1 := rfl
@[simp] theorem kAt_val (hK : ∀ k ∈ K, ∀ v, compAt σ X.J v k ∈ K) (v : Pl F) (k : K) :
    (kAt hK v k).1 = compAt σ X.J v k.1 := rfl
@[simp] theorem lArch_val (l : (AE F E)ˣ) : (lArch F E l).1 = unitArch F E l := rfl
@[simp] theorem lAt_val (v : Pl F) (l : (AE F E)ˣ) : (lAt E v l).1 = unitAt E v l := rfl

end GlobalTheory.ThK.EulerMeas

namespace GlobalTheory.ThK.EulerMeas

end GlobalTheory.ThK.EulerMeas

namespace GlobalTheory.ThK.EulerMeas

end GlobalTheory.ThK.EulerMeas

namespace GlobalTheory.ThK.EulerMeas

end GlobalTheory.ThK.EulerMeas

end
