import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgWeightContragredientExistsUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraicModularFormsIrreducibleDecompositionStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SplitExEveryDatum
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousNormFin

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial

open Classical in

noncomputable def GlobalTheory.AutPart.jumpOf (a : ℕ) (z : ℂ) : ℤ :=
  if h : ∃ n : ℤ, z = (n : ℂ) + ((a : ℂ) - 1) / 2 then -h.choose else 0

theorem GlobalTheory.AutPart.jumpOf_spec (a : ℕ) (z : ℂ) (h : ∃ n : ℤ, z = (n : ℂ) + ((a : ℂ) - 1) / 2) :
    ((GlobalTheory.AutPart.jumpOf a z : ℤ) : ℂ) = -z + ((a : ℂ) - 1) / 2 := by
  unfold GlobalTheory.AutPart.jumpOf
  rw [dif_pos h]
  conv_rhs => rw [h.choose_spec]
  push_cast; ring

