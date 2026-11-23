import Mathlib
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.NumberFieldFinitePlaceCompletionEmbedding
import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.UnivFrame
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.SecBaseChangeAnySt
import Formalism.LocalToGlobal.ProjectiveLattices.IntFrames
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Formalism.LocalToGlobal.ProjectiveLattices.GenFrPf

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Frames
set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.numberField_finitePlace_completion_embedding : Formalism.L2.PjFree.LocFld := by
  first | exact @GlobalTheory.locFld | exact GlobalTheory.locFld | (intros; apply GlobalTheory.locFld <;> assumption)
