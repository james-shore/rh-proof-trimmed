import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HtCard
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsCanonicalModuleSuccessor
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HeckeSplitOneOfCharTied
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SSAscent
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LocalInvariantsMatchSemisimple
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.Adm2OfHyp
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.GaloisCompatibilityOfJumps
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CentralLocalStableIntegral
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EventuallySizesCongruencesHostFactsColumnChoices
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsGreenCuspidalLabellingSameGeneratorsStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.EvParamsOfRows
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TupPinsOfMuIsW
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.EigIdxFiniteTypesCOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.E0ReadOfEigenLabeling
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPendingObjectsDepthZeroAdmissibleEigenSpanStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConjDualOfLabels
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TameBlockTypeAtSplitPlace
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CmFieldSplitPlaceEqOfPlaceEq
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PropEOfAdmissible
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsotypicRowLocalSplitExistsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameUniformizerPower
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitLocalOfGreen
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RegularLocalOfDepthZero
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TotallyComplexHostE
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.ConclusionFinite
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ThetaDataExists

set_option synthInstance.maxHeartbeats 200000

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.TypeRec.factG
noncomputable section
namespace GlobalTheory.HeightCounting.Up.PendLayer
variable {hL : _root_.UpperTheory.Zero.LLC.RecTExists}
theorem atMem_mono {p q : _root_.GlobalTheory.HeightCounting.Up.LayPAlt hL} (h : _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL p)
    (hpq : ∀ K B f T w Z Wt p0 t nch n c, p K B f T w Z Wt p0 t nch n c → q K B f T w Z Wt p0 t nch n c) : _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL q :=
  EvG.imp h fun _ _ _ _ _ hK => large₂.imp hK fun B f T _ H kp w Z Wt p0 t nch n xd c a b d =>
    hpq _ B f T w Z Wt p0 t nch n c (H kp w Z Wt p0 t nch n xd c a b d)
theorem atMem_and' {p q : _root_.GlobalTheory.HeightCounting.Up.LayPAlt hL} (h : _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL p) (h' : _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL q) :
    _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL fun K B f T w Z Wt p0 t nch n c => p K B f T w Z Wt p0 t nch n c ∧ q K B f T w Z Wt p0 t nch n c :=
  EvG.imp (EvG.inter h h') fun _ _ _ _ _ hK => large₂.imp (large₂.inter hK.1 hK.2) fun _ _ _ _ H kp w Z Wt p0 t nch n xd c a b d =>
    ⟨H.1 kp w Z Wt p0 t nch n xd c a b d, H.2 kp w Z Wt p0 t nch n xd c a b d⟩
theorem atMem_mono_of_colPin {q : ∀ (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T), w.Lt → Prop}
    (h : EvLgG fun K B f _ => KPx B f → ∀ (T : TwDat B) (w : ColW B f T) (Z : w.Lt), q B f T w Z) :
    _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL fun _ B f T w Z _ _ _ _ _ _ => q B f T w Z :=
  EvG.imp h fun _ _ _ _ _ hK => large₂.imp hK fun _ _ T _ H kp w Z _ _ _ _ _ _ _ _ _ _ => H kp T w Z
end GlobalTheory.HeightCounting.Up.PendLayer
end
end
