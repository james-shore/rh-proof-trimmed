module

public import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic
public import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageQuasiInvariant
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnMirabolicHolds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitOfOneAdd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvMulMemIntegralGLOfMem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemUnipBOfMemUnipotent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MinusculeSetEqDoubleCoset
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SymmetricFunctionAbsoluteValues
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TendstoZeroOfSumSqLe
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnipCMemIntegralGL
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfDiv
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init

@[expose] public section

namespace PositivityTheory.JacquetShalikaLocal

theorem l1 : L1 := (@GlobalTheory.CompanionTheory.SatakeBound.orthogonality_of_lattice_character : L0 → L1) _root_.GlobalTheory.CompanionTheory.JSBound.l0

theorem l2 : L2 := (@GlobalTheory.CompanionTheory.SatakeBound.LargeLattice.stability : L0 → L1 → L2) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l1

theorem l3 : L3 := (@GlobalTheory.CompanionTheory.SatakeBound.twisted_column_average_exists : L0 → L3) _root_.GlobalTheory.CompanionTheory.JSBound.l0

theorem l4s : FormCoefficientStability := (@GlobalTheory.CompanionTheory.JSBound.stability_coefficients : L0 → L2 → ColumnsMirabolic → FormCoefficientStability) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l2 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l4a : StableAverageExists := (@GlobalTheory.CompanionTheory.SatakeStable.stable_average : L0 → FormCoefficientStability → StableAverageExists) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l4s

theorem l4b : FormHermitianPositive := (@GlobalTheory.CompanionTheory.JSBoundStep.column_average_hermitian_positive : L0 → L3 → ColumnsMirabolic → FormHermitianPositive) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l3 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l4c : FormQuasiInvariantMirabolic := (@GlobalTheory.CompanionTheory.JSBound.column_average_quasi_invariant : L0 → ColumnsMirabolic → FormCoefficientStability → FormQuasiInvariantMirabolic) _root_.GlobalTheory.CompanionTheory.JSBound.l0 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds l4s

theorem l4d : FormEquivariantColumn := (@GlobalTheory.CompanionTheory.SatakeBound.equivariant_of_steps : L0 → ColumnsMirabolic → ColumnsUnipotent → FormCoefficientStability → FormEquivariantColumn) _root_.GlobalTheory.CompanionTheory.JSBound.l0 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds _root_.GlobalTheory.CompanionTheory.JSBound.ColumnUnipotent.main l4s

theorem l5 : L5 := (@GlobalTheory.CompanionTheory.SatakeBessel.bessel_step : L0 → L1 → L2 → L3 → ColumnsMirabolic → L5) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l1 l2 l3 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l6 : L6 := (@GlobalTheory.CompanionTheory.SatakeBound.final_form_bessel_bound : StableAverageExists → FormHermitianPositive → FormQuasiInvariantMirabolic → FormEquivariantColumn → L5 → L6) l4a l4b l4c l4d l5

theorem l10 : ParameterUpperBound := (@GlobalTheory.CompanionTheory.Satake.l10 : L6 → L7 → L8 → liftZP_newton → ParameterUpperBound) l6 _root_.GlobalTheory.CompanionTheory.SatakeBound.heckeEigenvector_whittaker _root_.GlobalTheory.CompanionTheory.SatakeBound.schur_row_recursion _root_.GlobalTheory.CompanionTheory.SatakeBound.norm_lt_one

alias g1 := _root_.GlobalTheory.CompanionTheory.JSUnit.exists_unit_form

alias g2 := _root_.GlobalTheory.CompanionTheory.SatakeBound.exists_translate_ne_zero

alias g3 := _root_.GlobalTheory.CompanionTheory.JSSmooth.g3

alias g4 := _root_.GlobalTheory.CompanionTheory.JSBound.global_character_holds

theorem jacquetShalikaBound : GlobalTheory.Published.JacquetShalikaBound := (@GlobalTheory.CompanionTheory.SatakeBound.jacquetShalikaBound_of_steps : ParameterUpperBound → liftZP_unit → ParameterAbsoluteValues → lift_levelP_alt₂ → G1 → G2 → G3 → G4 → GlobalTheory.Published.JacquetShalikaBound) l10 _root_.GlobalTheory.CompanionTheory.SatakeStable.l11 _root_.GlobalTheory.CompanionTheory.JSBound.symmetric_function_absolute_values _root_.GlobalTheory.CompanionTheory.SatakeTyping.l12 g1 g2 g3 g4

theorem jacquetShalika_of (h : GlobalTheory.Published.JacquetShalikaRigidity) : GlobalTheory.Published.JacquetShalika := ⟨h, jacquetShalikaBound⟩

end PositivityTheory.JacquetShalikaLocal
