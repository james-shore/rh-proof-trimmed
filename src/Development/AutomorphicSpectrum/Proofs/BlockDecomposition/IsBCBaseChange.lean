import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import GroundTheory.LocalFields.ExistsUnitFiltrationUnitsLeRangeNormUnits
import GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.EulerProducts.GenStable

noncomputable section

open NumberField IsDedekindDomain MeasureTheory GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic
open GroundTheory.Automorphic.AutomorphicForm Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Global.AdicLiesOver

namespace GlobalTheory.CompanionTheory.BaseChangeData

variable {K : Type} [Field K] [NumberField K]

def below (w : PlK K) : Pl := w.under (𝓞 ℚ)

instance liesOver_below (w : PlK K) : w.asIdeal.LiesOver (below w).asIdeal := ⟨rfl⟩

end GlobalTheory.CompanionTheory.BaseChangeData
