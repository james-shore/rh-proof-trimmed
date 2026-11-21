import Mathlib
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InSupportOfIsSubquotient
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsGenericIffIsGenericFor
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StrongMultiplicityOne
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockSizesSum
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MeasureFundDomLtTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripSizesSum

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LeviBlockExponent GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.CuspBlock GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.MidJacquet

section Abstract

variable {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V]

def tupleRep (π : Representation ℂ G V) (m : ℕ) : Representation ℂ G (Fin m → V) where
  toFun g := LinearMap.pi fun j => π g ∘ₗ LinearMap.proj j
  map_one' := by ext; simp
  map_mul' a b := by ext; simp

@[simp] theorem tupleRep_apply (π : Representation ℂ G V) (m : ℕ) (g : G) (u : Fin m → V) :
    tupleRep π m g u = fun j => π g (u j) := rfl

end Abstract

end GlobalTheory.MidJacquet

namespace GlobalTheory.MidJacquet

end GlobalTheory.MidJacquet
