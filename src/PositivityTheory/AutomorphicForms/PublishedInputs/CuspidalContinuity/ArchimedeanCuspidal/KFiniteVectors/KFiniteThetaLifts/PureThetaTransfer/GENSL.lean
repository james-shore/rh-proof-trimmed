import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.AdmM
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.REALTH
import GroundTheory.HeightsAndTheta.Theta.WeilBox
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open GroundTheory.Global.AdicLiesOver
open Ad3.R (G2 Jd md KA LInv pri dia2 pt)
open scoped NumberField.AdeleRing ValuativeRel ComplexConjugate

namespace Ad3.K.QuadraticBaseChangeGL3.Th

variable {K : Type} [Field K] [NumberField K]

def crd (R : Type) [Field R] [Algebra ℚ R] (β : Module.Basis (Fin 2) ℚ K) (ξ : K) : Fin 2 → R :=
  fun i => algebraMap ℚ R (β.repr ξ i)

namespace LM
variable {c : HeckeCharacter K} {v : Pl}

def lam : LM c v → ℂ
  | sp .. => 1
  | ns w _ η _ => GL2LocalData.lamE (Kv K w) (GP.psiF v)⁻¹ η

end LM

end Ad3.K.QuadraticBaseChangeGL3.Th
