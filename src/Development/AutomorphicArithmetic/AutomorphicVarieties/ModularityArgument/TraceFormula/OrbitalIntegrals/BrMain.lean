module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.GeoTransport
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.QuotFubiniOf
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.AlongIndep
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.GeoOfMatch
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.GeoTransport
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.InclClosed
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.PlaceData
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.PlaceInt
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.PlaceOfLocal
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.PlaceUniq
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.PlaceUnit
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.QuotAlong
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.QuotReal
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.TwCentImg
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.UnitMatch
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.TraceFormula.OrbitalIntegrals.TwistedOrbitalIntegrals.UnitSB
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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

@[expose] public section

namespace UpperTheory.V.Z.Tf.Orb

theorem twCentImg_holds : TwCentImg := twCentImg _root_.UpperTheory.V.Z.Tf.Orb.centComm

theorem quotAlong_holds : QuotAlong := quotAlong _root_.UpperTheory.V.Z.Tf.Orb.haarComm _root_.UpperTheory.V.Z.Tf.Orb.quotIndep

theorem inclClosed_holds : InclClosed := inclClosed _root_.UpperTheory.V.Z.Tf.Orb.extCont

theorem geoOfMatch_holds : GeoOfMatch := geoOfMatch _root_.UpperTheory.V.Z.Tf.Orb.gLTop _root_.UpperTheory.V.Z.Tf.Orb.extCont _root_.UpperTheory.V.Z.Tf.Orb.centComm twCentImg_holds quotAlong_holds inclClosed_holds

alias unitSB_holds := _root_.UpperTheory.V.Z.Tf.Orb.unitSB

theorem unitMatch_holds : UnitMatch := unitMatch _root_.UpperTheory.V.Z.Tf.Orb.gLTop _root_.UpperTheory.V.Z.Tf.Orb.extCont _root_.UpperTheory.V.Z.Tf.Orb.centComm twCent_of _root_.UpperTheory.V.Z.Tf.Orb.haarComm _root_.UpperTheory.V.Z.Tf.Orb.quotReal unitSB_holds

alias placeData_holds := _root_.UpperTheory.V.Z.Tf.Orb.placeData

theorem placeOfLocal_holds : PlaceOfLocal := placeOfLocal _root_.UpperTheory.V.Z.Tf.Orb.gLTop _root_.UpperTheory.V.Z.Tf.Orb.extCont _root_.UpperTheory.V.Z.Tf.Orb.centComm _root_.UpperTheory.V.Z.Tf.Orb.haarComm twCentImg_holds geoOfMatch_holds _root_.UpperTheory.V.Z.Tf.Orb.geoTransport _root_.UpperTheory.V.Z.Tf.Orb.alongIndep

alias placeUniq_holds := _root_.UpperTheory.V.Z.Tf.Orb.placeUniq

alias placeInt_holds := _root_.UpperTheory.V.Z.Tf.Orb.placeInt

theorem placeUnit_holds : PlaceUnit := placeUnit unitMatch_holds unitSB_holds placeData_holds placeOfLocal_holds placeInt_holds

end UpperTheory.V.Z.Tf.Orb
