module

public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.LineTransport
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharactersFactVersion
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.SemiCharBasic
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.IteratedDerivLine
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LineRestrLinSubst
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LocalComponentGL
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LogarithmEquivalence
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlock
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlockFirstBlockEmb
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.NormLtOne
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.QuadraticSemicharactersOfProductThetaMem
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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

namespace Formalism.L2.Th1.H

alias opUMul := _root_.Formalism.L2.Th1.H.heisenbergMul
alias opUComm := _root_.Formalism.L2.Th1.H.heisenbergComm
alias pullOpU := _root_.Formalism.L2.Th1.H.precompHeisenberg
alias semiCharBasic := _root_.Formalism.L2.Th1.H.semicharacterBasic
alias semiHom := _root_.Formalism.L2.Th1.H.semicharacterHom
alias opUAnalytic := _root_.Formalism.L2.Th1.H.heisenbergAnalytic
alias stdHBasic := _root_.Formalism.L2.Th1.H.standardFormBasic
alias opUStd := _root_.Formalism.L2.Th1.H.heisenbergStandard
theorem interClass : InterClass := InterClass_of semiHom
alias repsExist := _root_.Formalism.L2.Th1.H.cosetRepsExist
theorem interReps : InterReps := InterReps_of semiHom
theorem interFixed : InterFixed := InterFixed_of semiHom
theorem interTh : InterTh := InterTh_of semiHom opUAnalytic
theorem thIsom : ThIsom := ThIsom_of _root_.Formalism.L2.Th1.H.heisenbergIsometry
theorem indexEq : IndexEq := IndexEq_of _root_.Formalism.L2.Th1.H.characterSum repsExist
theorem interInv : InterInv := InterInv_of opUComm interReps interFixed repsExist
theorem lineTransport : LineTransport := LineTransport_of interInv interTh

alias product_theta_mem' := _root_.Formalism.L2.Th1.H.product_theta_mem
theorem alphaQRules : AlphaQRules := quadMultiplierRules
theorem thetaVector : ThetaVector :=
  ThetaVector_of lineTransport _root_.Formalism.L2.Th1.H.ThStd_proof product_theta_mem' _root_.Formalism.L2.Th1.H.StdSelfDual_proof _root_.Formalism.L2.Th1.H.StdSemiChar_proof thIsom _root_.Formalism.L2.Th1.H.fourth_root

theorem taylorMvLinear : TaylorMvLinear := TaylorMvLinear_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'
theorem taylorMvMul : TaylorMvMul := TaylorMvMul_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'
theorem taylorMvComp : TaylorMvComp := TaylorMvComp_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'
theorem taylorMvProd : TaylorMvProd := TaylorMvProd_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'
theorem taylorMvTens4 : TaylorMvTens4 := TaylorMvTens4_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'
theorem taylorMvInj : TaylorMvInj := TaylorMvInj_of _root_.Formalism.L2.Th1.H.lineUnique' _root_.Formalism.L2.Th1.H.taylorLine'

theorem quadraticSemicharacter_identity_reformulated₂ : quadraticSemicharacterIdentityReformulated₂ := quadraticSemicharacters_of_productThetaMem product_theta_mem'
theorem quadraticSemicharacters_fact : quadraticSemicharacterIdentity :=
  quadraticSemicharacterIdentity_of_reformulated_of_taylorMv_of_repsExist_of_opUAnalytic quadraticSemicharacter_identity_reformulated₂ taylorMvLinear taylorMvComp taylorMvProd taylorMvTens4 repsExist opUAnalytic

end Formalism.L2.Th1.H
