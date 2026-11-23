import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.IsAutCsdA
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PolarizedLinkage.AAcrossOf
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PolarizedLinkage.AUpDownOf
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PolarizedLinkage.FlagLaws
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PolarizedLinkage.PlainRec
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PolarizedLinkage.ThruAway
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.SuppSmo1
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.WinUpDown
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.WinInd
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.WinSph
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.WindowMul
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.CyclicCharacterEigen.PropEG
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.PrincipalSeriesMatching.SumCardLe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCompSymm
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RankinSelbergSixthOfEarlier
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RankinSelbergFunctionalEquation
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GlobalRankinSelbergBasicFactsStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainInvarianceOfDescriptionStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainIntegralCentralInvarianceStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingBottomRowOrbits
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingMirabolicCosetsStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinBasicThird
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMixedToEuclideanConjSqRat
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewformLiftLevelStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewformLiftWhittakerExpansionStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewformLiftCuspidality
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.StripEstimates.EulOf
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.OrdinaryJacquetModules.ContOfFlag
import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.RankTwoAutomorphyDescendsFromAbelianCMToRat

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.MainNotions.N Polynomial GlobalTheory.CuspRep GlobalTheory.GalOfCusp UpperTheory.V UpperTheory.V.Af UpperTheory.V.Base UpperTheory.GalN.V UpperTheory.V.Z.Win

set_option linter.unusedVariables false

namespace UpperTheory.V.Z.Win.Dn

local instance tf (L Ω : Type) [Field L] [Field Ω] [Algebra L Ω] : Module.IsTorsionFree L Ω := DivisionSemiring.to_moduleIsTorsionFree

def IneOfKer : Prop :=
  ∀ (F Ω : Type) [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω] (l : ℕ) [Fact l.Prime] (n : ℕ)
    (r : G F Ω →* GL (Fin n) (Qbar l)), (∀ A : ValuationSubring Ω, ¬ A.valuation (l : Ω) < 1 → ∃ χ : G F Ω →* (Qbar l)ˣ, Continuous χ ∧
      (χ '' (Ine (F := F) A : Set (G F Ω))).Finite ∧ ∀ g ∈ Ine (F := F) A, χ g = 1 → r g = 1) → IneAb r

def FlagAll : Prop :=
  ∀ (F Ω : Type) [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω] (l : ℕ) [Fact l.Prime] (n : ℕ)
    (r : G F Ω →* GL (Fin n) (Qbar l)), (∀ w : HeightOneSpectrum (𝓞 F), ((l : ℕ) : 𝓞 F) ∈ w.asIdeal → ∃ A : ValuationSubring Ω,
      IsPlaceOver A w ∧ ∃ κ : Fin n → ↥(Dec (F := F) A) →* (Qbar l)ˣ, IsFlagOn r (Dec (F := F) A) κ) → Flagged r

end UpperTheory.V.Z.Win.Dn
