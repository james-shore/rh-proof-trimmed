import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolEqISupFockDeg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchOperatorCompactUnitaryWStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.GenSubHwOfSurjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialFockSpaceStableArchimedeanMaximalCompaStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatibleStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExistStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialFockSpaceStableArchimedeanMaximalCompa
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFockMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockToSchrodingerMapExistsOfArchHeisenbergDerivaStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFockVacuumLineUniqueOfHeisenbergDerivatiStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartanEigenOrthonormalFrameExists
import Formalism.LocalRingCardinality.DataTheta
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdaptedFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKernelReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLevi
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementSkewCm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogAbsEEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOneParameterLinesOfLieLines
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchimedeanAdeleCMPrescribedEmbeddingValue
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleDiscreteSeriesOfHasParam
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockPolynomialSpaceEqFockImageOfArchLaws
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LineMatrixKroneckerLeftFactorEqZeroOfIsPC
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JmConjTranspose
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealPlaceComponentAdeleConjugationEqComplexConj
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DarbouxAdaptedPlaneEvaluation
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.StabiliserEqCentraliserCartan
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaIsotropicColumnsRingIsoComplex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueArchimedeanMatrixAdeleExtensionOfCom
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfAtOfPiInf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAtEvIPiInfEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMaxThOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HoweDualityReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureLApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealLinePolynomialEquivariance
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockVacuaTripleProportionalToNonzeroStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperThetaSubmoduleInKernel
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FirstMemberMaximalCompactPreservesPolynomialFock
import Development.AbelianVarietyTheory.Definitions.Divisors.IsPairOfIsTriple
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneLeftInverseExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementSkewHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementSignature
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementLattice
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementDualLattice
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementCartan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneComplementSplitBasis
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolActs
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialDatumActionOfPairStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HeisenbergLineDerivativeFiniteSpanStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FockVacuaSpanFiniteDimensionalStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CompactUnitaryMovesHeisenbergDerivativeStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GaussianCompactActionEigen
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFiniteDimensionalOrbitOfBoundedRankGeneratStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.OneParameterOperatorUnique
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HeisenbergLineDerivativeFiniteSpan
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.WeilModelArchimedeanExponent
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExist
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockVacuaTripleProportionalToNonzero
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CompactUnitaryPreservesPolynomialFock
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsINeZeroKind
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeakExponentialActionOnFockVectors
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyFinitePiTensorSumOfFactorOperators
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorIrreducibleModules
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockPolynomialsLocallyFiniteRationalWeights
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AbsSubOfDisjoint
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemSpanTprodOfCommuteAtEachPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MinFirst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockActionHomogeneousEigenvector
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanPolynomialTensorWeight
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsBilinearFischerPairingMatrixEntryPolynomia
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetSNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FischerDecompositionFockNoncompactParts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockAdjoints
import Formalism.SharpRestriction.Divisibility.SchurIrreducible
import Development.AbelianVarietyTheory.Definitions.Foundations.IsFockIPOfFockData
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockActionLowerLeftCommutesEmbedding
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumLineMatrixKroneckerRightFactor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LowestDegreeComponentInvariant
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsStableDisjoint
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsJointIntEigenvectorOfStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LowIrreducibleKStable

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.TwCoef

open Matrix Formalism.BasicNotions.TH

variable {R S : ℕ}

def splitIx (A : Fin (R + 1)) : Ix (R + 1) (S + 1) ≃ Ix R S ⊕ (Unit ⊕ Unit) :=
  (Equiv.sumCongr ((finSuccEquiv' A).trans (Equiv.optionEquivSumPUnit.{0, 0} (Fin R)))
    ((finSuccEquiv' (Fin.last S)).trans (Equiv.optionEquivSumPUnit.{0, 0} (Fin S)))).trans
    (Equiv.sumSumSumComm (Fin R) Unit (Fin S) Unit)

@[simp] theorem splitIx_inl_self (A : Fin (R + 1)) : splitIx (S := S) A (.inl A) = .inr (.inl ()) := by
  simp [splitIx, Equiv.sumSumSumComm, finSuccEquiv'_at, Equiv.optionEquivSumPUnit]

@[simp] theorem splitIx_inl_succAbove (A : Fin (R + 1)) (i : Fin R) :
    splitIx (S := S) A (.inl (A.succAbove i)) = .inl (.inl i) := by
  simp [splitIx, Equiv.sumSumSumComm, finSuccEquiv'_succAbove, Equiv.optionEquivSumPUnit]

@[simp] theorem splitIx_inr_last (A : Fin (R + 1)) : splitIx (S := S) A (.inr (Fin.last S)) = .inr (.inr ()) := by
  simp [splitIx, Equiv.sumSumSumComm, finSuccEquiv'_at, Equiv.optionEquivSumPUnit]

@[simp] theorem splitIx_inr_castSucc (A : Fin (R + 1)) (j : Fin S) :
    splitIx (S := S) A (.inr j.castSucc) = .inl (.inr j) := by
  have : finSuccEquiv' (Fin.last S) j.castSucc = some j := by
    rw [← Fin.succAbove_last, finSuccEquiv'_succAbove]
  simp [splitIx, Equiv.sumSumSumComm, this, Equiv.optionEquivSumPUnit]

def extM (A : Fin (R + 1)) (g : Matrix (Ix R S) (Ix R S) ℂ) (c : ℂ) : Matrix (Ix (R + 1) (S + 1)) (Ix (R + 1) (S + 1)) ℂ :=
  (Matrix.fromBlocks g 0 0 (c • (1 : Matrix (Unit ⊕ Unit) (Unit ⊕ Unit) ℂ))).submatrix (splitIx A) (splitIx A)

section Entries

variable (A : Fin (R + 1)) (g : Matrix (Ix R S) (Ix R S) ℂ) (c : ℂ)

@[simp] theorem extM_pp (i j : Fin R) : extM A g c (.inl (A.succAbove i)) (.inl (A.succAbove j)) = g (.inl i) (.inl j) := by
  simp [extM]

@[simp] theorem extM_AA : extM A g c (.inl A) (.inl A) = c := by simp [extM]

@[simp] theorem extM_Ap (j : Fin R) : extM A g c (.inl A) (.inl (A.succAbove j)) = 0 := by simp [extM]

@[simp] theorem extM_pA (i : Fin R) : extM A g c (.inl (A.succAbove i)) (.inl A) = 0 := by simp [extM]

@[simp] theorem extM_nn (i j : Fin S) : extM A g c (.inr i.castSucc) (.inr j.castSucc) = g (.inr i) (.inr j) := by
  simp [extM]

@[simp] theorem extM_LL : extM A g c (.inr (Fin.last S)) (.inr (Fin.last S)) = c := by simp [extM]

@[simp] theorem extM_Ln (j : Fin S) : extM A g c (.inr (Fin.last S)) (.inr j.castSucc) = 0 := by simp [extM]

@[simp] theorem extM_nL (i : Fin S) : extM A g c (.inr i.castSucc) (.inr (Fin.last S)) = 0 := by simp [extM]

end Entries

def posEquiv (A : Fin (R + 1)) : Fin R ⊕ Unit ≃ Fin (R + 1) :=
  ((finSuccEquiv' A).trans (Equiv.optionEquivSumPUnit.{0, 0} (Fin R))).symm

@[simp] theorem posEquiv_inl (A : Fin (R + 1)) (i : Fin R) : posEquiv A (.inl i) = A.succAbove i := by
  rw [posEquiv, Equiv.symm_apply_eq]; simp [finSuccEquiv'_succAbove, Equiv.optionEquivSumPUnit]

@[simp] theorem posEquiv_inr (A : Fin (R + 1)) (u : Unit) : posEquiv A (.inr u) = A := by
  rw [posEquiv, Equiv.symm_apply_eq]; simp [finSuccEquiv'_at, Equiv.optionEquivSumPUnit]

def negEquiv : Fin S ⊕ Unit ≃ Fin (S + 1) :=
  ((finSuccEquiv' (Fin.last S)).trans (Equiv.optionEquivSumPUnit.{0, 0} (Fin S))).symm

theorem fse_last_castSucc (i : Fin S) : finSuccEquiv' (Fin.last S) i.castSucc = some i := by
  rw [← Fin.succAbove_last, finSuccEquiv'_succAbove]

@[simp] theorem negEquiv_inl (i : Fin S) : negEquiv (.inl i) = i.castSucc := by
  rw [negEquiv, Equiv.symm_apply_eq]; simp [fse_last_castSucc, Equiv.optionEquivSumPUnit]

@[simp] theorem negEquiv_inr (u : Unit) : negEquiv (S := S) (.inr u) = Fin.last S := by
  rw [negEquiv, Equiv.symm_apply_eq]; simp [finSuccEquiv'_at, Equiv.optionEquivSumPUnit]

def lowEquiv (A : Fin (R + 1)) : {i : Fin R // (i : ℕ) < A} ⊕ Unit ≃ {i : Fin (R + 1) // (i : ℕ) < (A : ℕ) + 1} :=
  Equiv.ofBijective
    (fun x => match x with
      | .inl i => ⟨A.succAbove i.1, by
          rw [Fin.succAbove_of_castSucc_lt _ _ (by rw [Fin.lt_def]; exact i.2)]; simp only [Fin.coe_castSucc]; omega⟩
      | .inr _ => ⟨A, by omega⟩)
    (by
      constructor
      · rintro (i | i) (j | j) h <;> simp only [Subtype.mk.injEq] at h
        · exact congrArg Sum.inl (Subtype.ext (Fin.succAbove_right_injective h))
        · exact absurd h (Fin.succAbove_ne _ _)
        · exact absurd h.symm (Fin.succAbove_ne _ _)
        · rfl
      · rintro ⟨j, hj⟩
        by_cases h : j = A
        · exact ⟨.inr (), by simp [h]⟩
        · have hjA : (j : ℕ) < A := by
            rcases Nat.lt_or_ge (j : ℕ) A with h1 | h1
            · exact h1
            · exact absurd (Fin.ext (by omega)) h
          refine ⟨.inl ⟨⟨j, by omega⟩, hjA⟩, ?_⟩
          simp only [Subtype.mk.injEq]
          rw [Fin.succAbove_of_castSucc_lt _ _ (by rw [Fin.lt_def]; simpa using hjA)]
          rfl)

@[simp] theorem lowEquiv_inl (A : Fin (R + 1)) (i : {i : Fin R // (i : ℕ) < A}) :
    (lowEquiv A (.inl i) : Fin (R + 1)) = A.succAbove i.1 := rfl

@[simp] theorem lowEquiv_inr (A : Fin (R + 1)) (u : Unit) : (lowEquiv A (.inr u) : Fin (R + 1)) = A := rfl

end GlobalTheory.TwCoef
