module

public import Formalism.HermitianCurvature.StatementPB
public import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving
public import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsdFormConjRewrite
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing

@[expose] public section

namespace Formalism.FourierDecayAlt.P.HilbertSchmidtNorm

open Formalism.FourierDecayAlt.PB Finset NumberField

open scoped ComplexOrder ComplexConjugate

open Classical

theorem localCores : Formalism.FourierDecayAlt.PB.LocalCores :=
  ⟨_root_.Formalism.FourierDecayAlt.P.Jx1.t_PSDAgree,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_SchurProduct,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_ProductDomination,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_DiagScale,
   _root_.Formalism.FourierDecayAlt.P.diagonal_phase_conj,
   _root_.Formalism.FourierDecayAlt.P.block_diagonal_psd,
   _root_.Formalism.FourierDecayAlt.P.Jx7.t_ProductLemma',
   _root_.Formalism.FourierDecayAlt.P.scaling_bound,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_PhaseOk,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_OutsideSysOk,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_OutsideDomination,
   _root_.Formalism.FourierDecayAlt.P.local_pullback,
   _root_.Formalism.FourierDecayAlt.P.local_unit_heads,
   _root_.Formalism.FourierDecayAlt.P.top_pullback,
   _root_.Formalism.FourierDecayAlt.P.top_unit_heads,
   _root_.Formalism.FourierDecayAlt.P.global_of_local,
   _root_.Formalism.FourierDecayAlt.P.Jx8.t_UniformMajorantOn,
   _root_.Formalism.FourierDecayAlt.P.axioms_from_systems,
   _root_.Formalism.FourierDecayAlt.P.axioms_from_families,
   _root_.Formalism.FourierDecayAlt.P.kernel_of_local,
   _root_.Formalism.FourierDecayAlt.P.local_kernel_psd,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.B1.domMinOfText,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.domAfterOfLocal,
   _root_.Formalism.FourierDecayAlt.P.second_gram_and_vanishing,
   _root_.Formalism.FourierDecayAlt.P.kernel_gram_property,
   _root_.Formalism.FourierDecayAlt.P.zero_kernel_all_ones,
   _root_.Formalism.FourierDecayAlt.P.first_kernel_parseval,
   _root_.Formalism.FourierDecayAlt.P.first_theta_kernel_equality,
   _root_.Formalism.FourierDecayAlt.P.first_theta_equals_first_kernel,
   _root_.Formalism.FourierDecayAlt.P.added_block_kernel_support,
   _root_.Formalism.FourierDecayAlt.P.added_block_kernel_block_diagonal,
   _root_.Formalism.FourierDecayAlt.P.lattice_average_lemma_from_parts⟩

theorem globalCores : Formalism.FourierDecayAlt.PB.GlobalCores :=
  ⟨_root_.Formalism.FourierDecayAlt.P.theorem_a_after,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_RecursionWithDens,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.domScaleTop,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_SumBoundMax,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.recHypScaleTop,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.densSum,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_DensLeTwo,
   _root_.Formalism.FourierDecayAlt.P.RecursionWithDensities.J1.t_DensSize,
   _root_.Formalism.FourierDecayAlt.P.DensitySumsAndDomination.densChain,
   _root_.Formalism.FourierDecayAlt.P.poisson_summation_level_statement,
   _root_.Formalism.FourierDecayAlt.P.Jx3.t_PoissonJoint,
   _root_.Formalism.FourierDecayAlt.P.poisson_level_joint,
   Formalism.SA.P.smoothedSumBound,
   _root_.Formalism.FourierDecayAlt.P.lattice_facts_general,
   _root_.Formalism.FourierDecayAlt.P.dualIdealEqLiftIdeal,
   _root_.Formalism.FourierDecayAlt.P.scaledIdealNorm,
   _root_.Formalism.FourierDecayAlt.P.degreeFacts_statement,
   _root_.Formalism.FourierDecayAlt.P.frame_product_identities,
   _root_.Formalism.FourierDecayAlt.P.lattice_x_eq_lambda_one,
   _root_.Formalism.FourierDecayAlt.P.Jx2.t_LatticeSumsJoint,
   _root_.Formalism.FourierDecayAlt.P.instance_sizes,
   _root_.Formalism.FourierDecayAlt.P.instance_lattice_sums,
   _root_.Formalism.FourierDecayAlt.P.size_bounds_conclusion,
   _root_.Formalism.FourierDecayAlt.P.sizes_to_recursion,
   _root_.Formalism.FourierDecayAlt.P.global_positive,
   _root_.Formalism.FourierDecayAlt.P.mass_formula_constant_one,
   _root_.Formalism.FourierDecayAlt.P.form_gives_theorem_A⟩

end Formalism.FourierDecayAlt.P.HilbertSchmidtNorm

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
