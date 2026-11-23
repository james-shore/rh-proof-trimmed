import Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.SupportExistsAll
import Formalism.LocalToGlobal.UnitaryNorms.RealCyclotomicTwoPower
import Formalism.CyclotomicNorms.StatementT
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SimpleIffIrreducibleStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SeparableIrreducibleStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CentralIdempotentPropertiesStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalIsomorphismPropertiesStatement
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCharLab
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.PadicIntGLSmulMemPrincipalCongruenceFixed
import Formalism.LocalRingCardinality.DataTies
import Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CharacterIdempotents.Scalar
import Formalism.LocalToGlobal.Divisibility.ProjLemmas
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Formalism.SharpRestriction.Divisibility.PrimeDegreeVariant
import Development.AbelianVarietyTheory.Definitions.Divisors.SplitDoublingNBlock
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCuspidalIffCompositions

open Polynomial CategoryTheory
open Formalism.IrreducibleCountingLemmas.TYPES hiding zIdem IsCuspidal

noncomputable section

namespace ReciprocityTheory.Ty.Fin

section Gen

variable {Γ : Type} [Group Γ] [Fintype Γ]

theorem isIrr_of_simple (τ : FDRep ℂ Γ) [h : Simple τ] : IsIrr τ.ρ := (GlobalTheory.T.simple_iff_irreducible.1 Γ τ).1 h

theorem zIdemIdemCentral_holds (Γ : Type) [Group Γ] [Fintype Γ] (τ : FDRep ℂ Γ) (hτ : Simple τ) :
    zIdem τ * zIdem τ = zIdem τ ∧ ∀ a, zIdem τ * a = a * zIdem τ := GlobalTheory.T.central_idempotent_properties.1 Γ τ hτ

theorem zIdemOrthogonal_holds (Γ : Type) [Group Γ] [Fintype Γ] (τ σ : FDRep ℂ Γ) (hτ : Simple τ) (hσ : Simple σ)
    (h : ¬ Nonempty (τ ≅ σ)) : zIdem τ * zIdem σ = 0 := GlobalTheory.T.central_idempotent_properties.2.1 Γ τ σ hτ hσ h

end Gen

section GeneralLinearIntegers

variable {K : Type} [Field K] [Fintype K] [DecidableEq K]

theorem CuspIso.symm {α β : Type} [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β]
    {lam : FDRep ℂ (GL α K)} {mu : FDRep ℂ (GL β K)} (h : CuspIso K lam mu) : CuspIso K mu lam :=
  (GlobalTheory.T.cuspidal_isomorphism_properties K α β β lam lam mu mu (Equiv.refl α |>.trans (Classical.choose h))).1 h

theorem CuspIso.trans {α β γ : Type} [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β] [Fintype γ]
    [DecidableEq γ] {lam : FDRep ℂ (GL α K)} {mu : FDRep ℂ (GL β K)} {nu : FDRep ℂ (GL γ K)}
    (h : CuspIso K lam mu) (h' : CuspIso K mu nu) : CuspIso K lam nu :=
  (GlobalTheory.T.cuspidal_isomorphism_properties K α β γ lam lam mu nu (Classical.choose h)).2.1 h h'

end GeneralLinearIntegers

end ReciprocityTheory.Ty.Fin
