import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingMirabolicCosetsStatement

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open Ad3.R (G2 Jd md Dt KA Set0 Coord LInv pt dia2 pri)
open scoped NumberField.AdeleRing ENNReal

namespace GlobalTheory.CompanionTheory.UnfoldingAlt

def dl3 : GL (Fin 3) ℚ := dg 1 (-1) 1

def tr (W : G3 → ℂ) (g : G3) : ℂ := dualWhittakerAdelicGL3 W (dia dl3 * g)

end GlobalTheory.CompanionTheory.UnfoldingAlt
