import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PartialFourierInversion

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel Topology

noncomputable section

namespace GlobalTheory.CompanionTheory.GL2DualWhittakerPair.FlR

section D

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def ent (a b d c : F) : Fin 2 × Fin 2 → F :=
  fun ij => (!![a, b; d, c] : Matrix (Fin 2) (Fin 2) F) ij.1 ij.2

@[simp] theorem ent_00 (a b d c : F) : ent a b d c (0, 0) = a := by simp [ent]
@[simp] theorem ent_01 (a b d c : F) : ent a b d c (0, 1) = b := by simp [ent]
@[simp] theorem ent_10 (a b d c : F) : ent a b d c (1, 0) = d := by simp [ent]
@[simp] theorem ent_11 (a b d c : F) : ent a b d c (1, 1) = c := by simp [ent]

end D

end GlobalTheory.CompanionTheory.GL2DualWhittakerPair.FlR
