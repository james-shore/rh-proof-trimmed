import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocFieldFv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatchedLocalInducedSpaceIso
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalGLEmbeddingUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitPlaceCharacterComponentSmoothUnitaryConductStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.PairsOfSquareTriple
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitHomVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitDetSplitCoordGamma
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentRadicalOfGammaStabilizer
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviEmbeddingGammaStabilizerUnique

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.IndLineGL
open GlobalTheory.SplitCoord GlobalTheory.EmbChart
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.PlaneCoordAt

section Adelic

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {v : Pl F}

theorem piW_eq (t : E →ₐ[F] Fv F v) (z : AE F E) : piW t z = splitProj t (compFin F E v z) := rfl

end Adelic

end GlobalTheory.PlaneCoordAt

namespace GlobalTheory.PlaneCoordAt

end GlobalTheory.PlaneCoordAt

namespace GlobalTheory.PlaneCoordAt

end GlobalTheory.PlaneCoordAt

namespace GlobalTheory.PlaneCoordAt

end GlobalTheory.PlaneCoordAt

namespace GlobalTheory.PlaneCoordAt

end GlobalTheory.PlaneCoordAt
