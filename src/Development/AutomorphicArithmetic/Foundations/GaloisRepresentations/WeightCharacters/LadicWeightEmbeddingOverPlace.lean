module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.IntegralStructures.CongruenceOddLevel.WtDefs
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.DeltaNear
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.AutCrit
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.AutMul
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.DeltaNearH
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.DomOf
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.EllCOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.EmbProjHolds
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.EvLemOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.ExistsDual
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.ExpBasic
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.ExpDisj
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamExOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamOfA
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamOfOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamOffHolds
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamProj
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.FamSum
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.KaplFin
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.KaplOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.LadicWeightAtEmbeddingOverPlace
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.NearSub
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.NeatLev
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.NrmAut
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.PevExp
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.Pieces
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.QROf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.RFinEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.SepPoly
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.SqExpH
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.SumRep
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.TopOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.TopUpOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.TorFacts
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.TwistBd
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.TwistOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.WeightCharacters.WExpH
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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

@[expose] public section

namespace UpperTheory.Gal.Wt

theorem pevExp_holds : PevExp := pevExp_of _root_.UpperTheory.Gal.Wt.expBasic_of
theorem sqExp_holds : SqExp := sqExp_h _root_.UpperTheory.Gal.Wt.expBasic_of _root_.UpperTheory.Gal.Wt.evLem_of _root_.UpperTheory.Gal.Wt.dom_of
theorem wtBd_holds : WtBd := wtBd_of _root_.UpperTheory.Gal.Wt.expBasic_of _root_.UpperTheory.Gal.Wt.expDisj_of sqExp_holds _root_.UpperTheory.Gal.Wt.topUp_of _root_.UpperTheory.Gal.Wt.torFacts_of
theorem wExp_holds : WExp := wExp_h _root_.UpperTheory.Gal.Wt.expBasic_of sqExp_holds _root_.UpperTheory.Gal.Wt.torFacts_of
theorem nrmAut_holds : NrmAut := nrmAut_of _root_.UpperTheory.Gal.Wt.autCrit_of
theorem famOfA_holds : FamOfA := famOfA_of _root_.UpperTheory.Gal.Wt.autMul_of nrmAut_holds _root_.UpperTheory.Gal.Wt.rFinEx_of
theorem twist_holds : Twist := twist_of _root_.UpperTheory.Gal.Wt.autCrit_of
theorem twistBd_holds : TwistBd := twistBd_of twist_holds
theorem kapl_holds : Kapl := kapl_of _root_.UpperTheory.Gal.Wt.kaplFin_of
theorem sepPoly_holds : SepPoly := sepPoly_of kapl_holds
theorem pieces_holds : Pieces := pieces_of sepPoly_holds _root_.UpperTheory.Gal.Wt.nearSub_of
theorem famOf_holds : FamOf := famOf_of _root_.UpperTheory.Gal.Wt.expBasic_of pevExp_holds sqExp_holds _root_.UpperTheory.Gal.Wt.topUp_of wExp_holds famOfA_holds
theorem famEx_holds : FamEx := famEx_of _root_.UpperTheory.Gal.Wt.neatLev_of _root_.UpperTheory.Gal.Wt.ellC_of twist_holds twistBd_holds _root_.UpperTheory.Gal.Wt.ladic_weight_at_embedding_over_place pieces_holds _root_.UpperTheory.Gal.Wt.deltaNear_h famOf_holds
theorem famProj_holds : FamProj := famProj_of _root_.UpperTheory.Gal.Wt.evLem_of _root_.UpperTheory.Gal.Wt.sumRep_of
theorem famSum_holds : FamSum := famSum_of _root_.UpperTheory.Gal.Wt.expBasic_of _root_.UpperTheory.Gal.Wt.evLem_of _root_.UpperTheory.Gal.Wt.torFacts_of _root_.UpperTheory.Gal.Wt.qR_of wtBd_holds embProj_holds
theorem famWt_holds : FamWt := famWt_of famOff_holds famSum_holds

theorem wtLacEx_holds : UpperTheory.Gal.Int.Cong.WtLacEx := top_of famEx_holds famProj_holds famWt_holds

end UpperTheory.Gal.Wt
