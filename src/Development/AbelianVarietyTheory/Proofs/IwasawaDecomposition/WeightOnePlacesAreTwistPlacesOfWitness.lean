import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GKeyFin
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CentralizerTensorForms
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.RadfordShufflePolynomialHolds
import Formalism.LocalToGlobal.IndefiniteRealisationChoice
import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.IntChartCut
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsPtJ
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FormalPointSubstitutionSeriesValueAtTwoPoints
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.FormalExpMulFormalExpNeg
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.GermEvGermEvThreePoints
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.CoeffSubstInvMemOfTwoLeOrder
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsShortHarmonicFamilyLinear
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.CoordLetterEquivApplyConjugate
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.InertiaGaloisSymmetry.RdArith
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.InertiaGaloisSymmetry.DvdDiscrOfInertia
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.IsIrrKSubOfIsKTypeOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EqZeroOfInnerSmooth
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.IrreducibleDistinctUnitary
import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.PlaneFormNondegenerate
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsPosHermFormV

open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Fc GlobalTheory.RowEx GlobalTheory.Mem.LiteralAutomorphy
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.L2 Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx GlobalTheory.Mem.Col2 GlobalTheory.Mem.R3 NumberField IsDedekindDomain

noncomputable section

namespace GlobalTheory.Mem.Top.Bl

theorem finite_T_of_twArgs {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z : w.Lt} {Wt : Set B.places.Pl}
    {L : SizeData₂ (w.st Z).toD7} {hT : GatTies (w.st Z).toD7} {Gi : Formalism.MainNotions.G.Inst (w.st Z).toD7 L}
    {Gl : Formalism.MainNotions.G.LatInst (w.st Z).toD7} {Kc : Formalism.MainNotions.G.Consts} {Yd : DivX (w.st Z).toD7} {cX : ExtraC}
    {ex : Extra (w.st Z).toD7 L hT Gi Gl Kc Yd cX} {t : RowsT K w Z Wt ex.p0} (a : TwArgs ex t) : Finite a.x.T := by
  have hfin : Finite (TupU w.I (usedOf w.I T Wt)) := by
    have hs : ({τ | τ = (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))).1 ∨ τ ∈ tuOf w.I (usedOf w.I T Wt)} :
        Set _).Finite :=
      (Set.finite_singleton _).union (tuOf w.I (usedOf w.I T Wt)).finite_toSet
    exact hs.to_subtype
  obtain ⟨Dc, Sp, Zsc, lam, err, lam_eq, x, pack, _⟩ := a
  obtain ⟨G, grp, fin, Pl0, I0, T0, A3, core, alg, R, F, cG, _⟩ := x
  dsimp only at pack ⊢
  cases pack
  exact hfin

end GlobalTheory.Mem.Top.Bl

end
