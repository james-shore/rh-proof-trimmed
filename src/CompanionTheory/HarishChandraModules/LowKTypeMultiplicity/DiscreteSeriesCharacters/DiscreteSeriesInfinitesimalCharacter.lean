module

public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.CapelliDeterminantBlockProduct
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.FinalAll
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.CobApplyOfDeg
import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.Spread
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.AlgCoreSubOfAlgCore
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.BlkBijective
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.BlkStrictMono
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CarImpFrel
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CardOther
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CommuteOfUnitaryConjugate
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CreAnnApply
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.CreApply
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExistsCocycleOfMapToDegreeOneTerm
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ExpMemUJ
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.GlRelOfBracket
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HasDerivAtExpMul
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HasDerivAtExt
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.HwMapOfLowSpan
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ImportsAlt
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.IndOfNot
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.InnerEqZeroOfWeight
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KExp
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KhwExists
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KsetSubsetUjset
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KummerLiftedCocycleImageEqPicardClass
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MemFiltOfWords
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MemUJsetOfMemKset
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.MulMemUJset
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.NotCdomAddRoot
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SumInsertErase
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.WlemOfGfacts
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.WordMonomial
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.ZetaDegZero
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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

namespace CompanionTheory.D.DSIC

theorem hCAR : CAR := GlobalTheory.CompanionTheory.ChainCAR.car
theorem hFRel : FRel := _root_.GlobalTheory.CompanionTheory.DSICFRel.frel_of_car _root_.GlobalTheory.CompanionTheory.ChainCAR.car
theorem hBdFacts : BdFacts := GlobalTheory.CompanionTheory.KoszulBd.bdFacts _root_.GlobalTheory.CompanionTheory.ChainCAR.car
theorem hKoszul : Koszul := GlobalTheory.CompanionTheory.DSICKoszul.koszul _root_.GlobalTheory.CompanionTheory.ChainCAR.car
theorem hCover : Cover := GlobalTheory.CompanionTheory.DSCover.cover hKoszul _root_.GlobalTheory.CompanionTheory.DSVerma.verma
theorem hCO : CO := GlobalTheory.CompanionTheory.CasselmanOsborne.co_of hBdFacts _root_.GlobalTheory.CompanionTheory.GopEntries.gFacts hCover _root_.GlobalTheory.CompanionTheory.CapelliBlocks.co0
theorem hWLem : WLem := GlobalTheory.CompanionTheory.DSICWLem.wlem_of_gfacts _root_.GlobalTheory.CompanionTheory.GopEntries.gFacts
alias hLowSpan := _root_.GlobalTheory.CompanionTheory.KLowSpan.lowSpan_holds
theorem hHWMap : HWMap := GlobalTheory.CompanionTheory.DSICHWMap.hwMap_of_lowSpan hLowSpan
theorem hPRV : PRV := GlobalTheory.CompanionTheory.ChainHighest.aux₃ hFRel _root_.GlobalTheory.CompanionTheory.GopEntries.gFacts _root_.GlobalTheory.CompanionTheory.GamDomProof.gamDom _root_.GlobalTheory.CompanionTheory.KHighestExists.khwExists hHWMap
theorem hAlgCore : AlgCore := algCore_of hFRel hBdFacts hCO _root_.GlobalTheory.CompanionTheory.ZetaHighest.zetaHW hWLem _root_.GlobalTheory.CompanionTheory.DSNormLt.normLt _root_.GlobalTheory.CompanionTheory.DSChainAdj.adj hPRV
theorem hAlgCoreSub : AlgCoreSub := GlobalTheory.CompanionTheory.DSCoreSub.algCoreSub_of_algCore hAlgCore
theorem hSmMod : SmMod := GlobalTheory.CompanionTheory.SmoothModule.smMod _root_.GlobalTheory.CompanionTheory.DSSmLin.smLin _root_.GlobalTheory.CompanionTheory.SmBracket.smBracket
theorem hActQ : ActQ := GlobalTheory.CompanionTheory.DSCapelliAction.actQ
theorem hStabLink : StabLink := GlobalTheory.CompanionTheory.DSStabLink.stabLink _root_.GlobalTheory.CompanionTheory.DSICKExp.kExp
alias hWtLink := _root_.GlobalTheory.CompanionTheory.WtLinkPf.wtLink
theorem hHWofType : HWofType := GlobalTheory.CompanionTheory.DSHighestOfKType.hwOfType hStabLink hWtLink
theorem hTypeOfHW : TypeOfHW := GlobalTheory.CompanionTheory.DSKType.typeOfHW hLowSpan hStabLink hWtLink

theorem discrete_series_infinitesimal_character : PI.DSInfCharCap.DSInfCharCap :=
  dsInfCharCap_of hAlgCoreSub hSmMod hActQ _root_.CompanionTheory.D.DSIC.capelli_spread CompanionTheory.D.gk.admitted.kFin_mem_smoothVecs _root_.UpperTheory.Reformulated.B.Gc1.kFinStab hStabLink
    hHWofType hTypeOfHW

end CompanionTheory.D.DSIC
