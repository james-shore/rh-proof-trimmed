module

public import Development.EtaleCohomology.EtaleSheaves.LeafSupport
public import Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing.SecondBlockUnimodularLocusInclusionMono
public import Development.EtaleCohomology.EtaleSheaves.LeafOneLocPf
public import Development.EtaleCohomology.EtaleSheaves.LeafTensQIsoPf
public import Development.EtaleCohomology.EtaleSheaves.LeafTw0GenFreeOf
public import Development.EtaleCohomology.EtaleSheaves.TwistTensorRestriction
public import Development.EtaleCohomology.EtaleSheaves.LeafUnitActPf
public import Development.EtaleCohomology.EtaleSheaves.UnitExistence
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTateTwistResolutionTensorFlat
import Development.EtaleCohomology.EtaleSheaves.BaerFlatZModCriterion
import Development.EtaleCohomology.EtaleSheaves.EtaleEvenCohomologyGradedCommRingOfCupRingAxioms
public import Development.EtaleCohomology.EtaleSheaves.EtaleFirstChernClassRepresentedByChernCocycle
public import Development.EtaleCohomology.EtaleSheaves.GoalOf
public import Development.EtaleCohomology.EtaleSheaves.LeafActSheafPf
import Development.EtaleCohomology.EtaleSheaves.LeafChernPf
import Development.EtaleCohomology.EtaleSheaves.LeafCochainVanishPf
import Development.EtaleCohomology.EtaleSheaves.LeafCover2Of
public import Development.EtaleCohomology.EtaleSheaves.LeafGeomPfLoc
import Development.EtaleCohomology.EtaleSheaves.LeafInjSecInjOf
import Development.EtaleCohomology.EtaleSheaves.LeafLinePf
import Development.EtaleCohomology.EtaleSheaves.LeafMapWPf
import Development.EtaleCohomology.EtaleSheaves.LeafNatPf
import Development.EtaleCohomology.EtaleSheaves.LeafNewtonPf
import Development.EtaleCohomology.EtaleSheaves.LeafPreTensLocInjPf
import Development.EtaleCohomology.EtaleSheaves.LeafPrimCoverPf
import Development.EtaleCohomology.EtaleSheaves.LeafRepVanishPf
public import Development.EtaleCohomology.EtaleSheaves.LeafSecInjPf
import Development.EtaleCohomology.EtaleSheaves.LeafTensFactorPf
import Development.EtaleCohomology.EtaleSheaves.LeafTensQIsoGenPf
import Development.EtaleCohomology.EtaleSheaves.LeafTensUPPf
import Development.EtaleCohomology.EtaleSheaves.LeafTw0LocGenOf
import Development.EtaleCohomology.EtaleSheaves.LeafTw0TwFreeOf
import Development.EtaleCohomology.EtaleSheaves.LeafTwResHtpyPf
import Development.EtaleCohomology.EtaleSheaves.LeafTwTensExistsPf
import Development.EtaleCohomology.EtaleSheaves.LeafUnitAWPf
import Development.EtaleCohomology.EtaleSheaves.LeafWhitneyPf
import Development.EtaleCohomology.EtaleSheaves.LeafZModInjFlatPf
import Development.EtaleCohomology.EtaleSheaves.PrimitiveRootLocalization
import Development.EtaleCohomology.EtaleSheaves.RingCommutativity
import Development.EtaleCohomology.EtaleSheaves.TwPairExists
import Development.EtaleCohomology.EtaleSheaves.UnimodularBlockEqToHomValEqOne
import Development.EtaleCohomology.EtaleSheaves.UnitExistence.CocycleOfSec
import Development.EtaleCohomology.EtaleSheaves.UnitSections
public import Development.EtaleCohomology.EtaleSheaves.WeightBoundsExistence
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

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.Fix.EtaleChapterDTwo

theorem awSpec : LateralTheory.E.LeafA6suppPf.LeafAWSpec := by
  intro q _ E n m i j α β
  have hS := LateralTheory.Fix.CupProductTensor.cupSpec (ZMod q) (twPair q i j) E (rfl : n + m = n + m)
  obtain ⟨γ, hγ⟩ := hS.1 α β
  exact ⟨γ, hγ, hS.2 α β γ hγ⟩

theorem s5 : LateralTheory.E.ZModFlatnessFromBaerCriterion.TensTwRes := @_root_.GlobalTheory.EtC.isTwRes_tensor
theorem s8 : LateralTheory.E.LeafTwPairHtpyPf.LeafTwTensRes := @_root_.LateralTheory.E.LeafTwPairHtpyPf.LeafTwTensRes_of s5 _root_.LateralTheory.E.ZModFlatnessFromBaerCriterion.LeafInjSecInj_of _root_.LateralTheory.E.ZModFlatnessFromBaerCriterion.LeafInjFlatZMod_of
theorem s10 : LateralTheory.E.LeafTwPairUniquePf.LeafTwPairHtpy := @_root_.LateralTheory.E.LeafTwPairUniquePf.LeafTwPairHtpy_of _root_.LateralTheory.E.LeafTwPairHtpyPf.LeafTwTensExists_of _root_.LateralTheory.E.LeafTwPairHtpyPf.LeafTensFactor_of s8 _root_.LateralTheory.E.LeafTwPairHtpyPf.LeafTwResHtpy_of
theorem s12 : LateralTheory.E.CupProductRingLaws.LeafTwPairUnique := @_root_.LateralTheory.E.CupProductRingLaws.LeafTwPairUnique_of _root_.LateralTheory.Fix.CupProductTensor.cupSpec s10 _root_.LateralTheory.E.FreeSheafGeneratorLifts.LeafHtpyAW_proved
theorem s14 : LateralTheory.E.LeafOneSpecPf.LeafOneExists := @_root_.LateralTheory.E.LeafOneExistsPf.CocycleOfSec.LeafOneExists_of_unit _root_.LateralTheory.E.UnitSections.LeafUnitSec_of
theorem s18 : LateralTheory.E.LeafUnitPairGPf.LeafUnitAct := @_root_.LateralTheory.E.LeafUnitActPf.LeafUnitAct_of _root_.LateralTheory.E.LeafActSheafPf.LeafActSheaf_of
theorem s22 : LateralTheory.E.LeafTw0LocSplitPf.LeafTw0GenFree := @_root_.LateralTheory.E.LeafTw0LocSplitPfM.LeafTw0GenFree_of _root_.LateralTheory.E.LeafTw0TwFreePf.LeafTw0TwFree_of
theorem s23 : LateralTheory.E.LeafTensMonoPf.LeafTw0LocSplit := @_root_.LateralTheory.E.LeafTw0LocSplitPf.LeafTw0LocSplit_of _root_.LateralTheory.E.LeafTw0LocGenPf.LeafTw0LocGen_of s22
theorem s24 : LateralTheory.E.LeafTensMonoPf.LeafPreTensLocInj := @_root_.LateralTheory.E.LeafPreTensLocInjPf.LeafPreTensLocInj_of s23
theorem s25 : LateralTheory.E.LeafExtTensPf.LeafTensMono := @_root_.LateralTheory.E.LeafTensMonoPf.LeafTensMono_of s24
theorem s29 : LateralTheory.E.LeafExtTensPf.LeafTensQIso := @_root_.LateralTheory.E.LeafTensQIsoPf.LeafTensQIso_of _root_.LateralTheory.E.LeafTensQIsoGenPf.LeafTensQIsoGen_of _root_.LateralTheory.E.LeafSecInjPf.LeafSecInj_of _root_.LateralTheory.E.LeafZModInjFlatPf.LeafZModInjFlat_of
theorem s30 : LateralTheory.E.LeafPairExtPf2.LeafExtTens := @_root_.LateralTheory.E.LeafExtTensPf.LeafExtTens_of s25 s29
theorem s31 : LateralTheory.E.LeafPairExtPf.LeafExtAlongAug := @_root_.LateralTheory.E.LeafPairExtPf2.LeafExtAlongAug_of _root_.LateralTheory.E.LeafTensUPPf.etale_tensor_pairing_universal_property_holds s30
theorem s32 : LateralTheory.E.LeafUnitPairGPf.LeafPairExt := @_root_.LateralTheory.E.LeafPairExtPf.LeafPairExt_of' s31
theorem s33 : LateralTheory.E.LeafUnitPairPf.LeafUnitPairG := @_root_.LateralTheory.E.LeafUnitPairGPf.LeafUnitPairG_of s18 s32
theorem s34 : LateralTheory.E.LeafRingUnitPf.LeafUnitPair := @_root_.LateralTheory.E.LeafUnitPairPf.LeafUnitPair_of s33
theorem s36 : LateralTheory.E.LeafRingUnitPf.LeafOneLoc := @_root_.LateralTheory.E.LeafOneLocPf.LeafOneLoc_of _root_.LateralTheory.E.PrimitiveRootLocalization.LeafPrimLoc_of
theorem s38 : LateralTheory.E.CupProductRingLaws.LeafRingUnit := @_root_.LateralTheory.E.LeafRingUnitPf.LeafRingUnit_of _root_.LateralTheory.Fix.CupProductTensor.cupSpec _root_.LateralTheory.Fix.CupProductTensor.twPairExists s12 _root_.LateralTheory.E.LeafA6nat_xy7V2Cut.oneSpec s34 s36 _root_.LateralTheory.E.LeafUnitAWPf.LeafUnitAW_of
theorem s41 : LateralTheory.E.D2.LeafA6ring := @_root_.LateralTheory.E.LeafA6ringCut.goal_of s38 _root_.LateralTheory.Fix.CupProductTensor.ringAssoc _root_.LateralTheory.Fix.CupProductTensor.ringComm'
theorem s42 : LateralTheory.E.D2.LeafRing := @_root_.LateralTheory.E.D2.LeafRing_of _root_.LateralTheory.E.LeafA6nat_xy7V2Cut.goal_of s41
theorem s44 : LateralTheory.E.D2.LeafNat := @_root_.LateralTheory.E.D2.LeafNat_of _root_.LateralTheory.E.LeafA6nat_xy7V2Cut.goal_of
theorem s47 : LateralTheory.E.LeafGeomPf.LeafHalf2 := @_root_.LateralTheory.E.HalfDegreeVanishing.LeafHalf2_of _root_.LateralTheory.E.LeafMapWPf.LeafMapW_of
theorem s48 : LateralTheory.E.D2.LeafGeom := @_root_.LateralTheory.E.LeafGeomPfLoc.LeafGeom_of _root_.LateralTheory.E.LeafHalf1Pf.LeafHalf1_of s47
theorem s53 : LateralTheory.E.D2.LeafA6supp := @_root_.LateralTheory.E.LeafA6suppPf.LeafA6supp_of _root_.LateralTheory.Fix.EtaleChapterDTwo.awSpec _root_.LateralTheory.E.LeafRepVanishPf.LeafRepVanish_of _root_.LateralTheory.E.LeafA6suppPf.LeafCochainVanish_of
theorem s54 : LateralTheory.E.D2.LeafWhitney := @_root_.LateralTheory.E.D2.LeafWhitney_of s48 _root_.LateralTheory.E.LeafCover2Pf.LeafCover2_of s53 _root_.LateralTheory.E.LeafA6nat_xy7V2Cut.goal_of
theorem s55 : LateralTheory.E.D2.LeafLine := @_root_.LateralTheory.E.D2.LeafLine_of _root_.LateralTheory.E.LeafA6nat_xy7V2Cut.goal_of
theorem s57 : LateralTheory.E.EtaleChapterDTwo := @_root_.LateralTheory.E.D2.goal_of s42 _root_.LateralTheory.E.D2.LeafChern_of s44 s54 s55 _root_.LateralTheory.E.LeafNewtonPf.LeafNewton_of

end LateralTheory.Fix.EtaleChapterDTwo
