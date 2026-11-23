import Mathlib
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsFramedPointChangedByLetters
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.ArcFramePointTruncation
import Development.AbelianVarietyTheory.Definitions.RegularCharts.ModelAt
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsUniqueIsPointOfDualNumber
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.GermEqZeroOfThickenings
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IdealPart
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsAdicCompleteIdealEps
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.StSiegPull
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd

noncomputable section

namespace GlobalTheory.ArcCompare

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.ArcQ
open GlobalTheory.IndefiniteRowSideFullHecke.SectionsThroughEpsilonPoints hiding Wit WitBC
open GlobalTheory.ConstTan GlobalTheory.FormalPoint ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj MonObj

section Gt

variable {A : Type} [CommRing A] [IsDomain A] {D₀ : Out.DegPre A}

theorem comb_iff {m : ℕ} (cf : Fin m → A) (e : Fin m → Out.GtPt D₀ (epsR A)) (ν : Out.GtPt D₀ (epsR A)) :
    GtComb cf e ν ↔ IsCombGt e cf ν := Iff.rfl

theorem thMul_iff (r : A) (th th' : D₀.P.L.Sec) : ThMul r th th' ↔ IsMulSec r th th' := Iff.rfl

theorem thNZ_iff (th : D₀.P.L.Sec) : ThNZ th ↔ FibrewiseNe th := Iff.rfl

variable {A' : Type} [CommRing A'] [IsDomain A'] {D₁ : Out.DegPre A'} {f : A →+* A'}

end Gt

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

end GlobalTheory.ArcCompare
