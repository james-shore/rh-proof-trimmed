import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitPlacesSelectingAdelicIdempotent
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE
import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
import Formalism.SharpRestriction.GlobalSchurBounds.QuadraticLogDerivCongr
import Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate
import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLatticeOfAdelicPoint

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix GlobalTheory.WeilParts
open scoped TensorProduct Topology
attribute [local instance] Formalism.BasicNotions.Host.cmStar
set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.exists_splitPlaces_selecting_adelicIdempotent : ∀ D : D7, ∃ ε : AE D, ε * ε = ε ∧ ε * cA D ε = 0 ∧ infPart D ε = 0 ∧ (∀ e, IsSplitIdem D e → (ε * e = e ∧ ε * cA D e = 0) ∨ (ε * e = 0 ∧ ε * cA D e = cA D e)) ∧ ∀ v η, NonSplitAt D v η → algebraMap (AF D.host.F) (AE D) η * ε = 0 := by
  first | exact @GlobalTheory.HalfIdem.exists_half_idem | exact GlobalTheory.HalfIdem.exists_half_idem | (intros; apply GlobalTheory.HalfIdem.exists_half_idem <;> assumption)
