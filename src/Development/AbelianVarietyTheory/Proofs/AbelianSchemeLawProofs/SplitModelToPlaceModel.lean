import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Development.AbelianVarietyTheory.BlockTheory.AbelianSchemeLaw.PolarizedAbelianVarieties
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsAffineOfQuasiAffine
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.KTrivOfUnimodular
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsProperHomOfRelAmple

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj

namespace GlobalTheory.PolCompare

open GlobalTheory.CechPic GlobalTheory.HermTensorKernel

section Conditions

variable {S : Scheme.{0}} (A : Over S) [GrpObj A] {L : LB A.left}

theorem rigidified_iff (L : LB A.left) : Out.Rigidified A L ↔ IndefiniteRowSideFullHecke.PolarizedAbelianVarieties.IsRigidified A L := Iff.rfl

end Conditions

variable {S : Scheme.{0}}

end GlobalTheory.PolCompare
