import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LtSeries
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjCongr
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfNotIsUnit
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EqOfPowEqOneOfNormSubLt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTuple
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ResEqIff
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsStratHom
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LubinTateLogNeZero
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineFormalismTensorEquiv

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct GlobalTheory.PZ GlobalTheory.AinfK GlobalTheory.AcrisK GlobalTheory.BKReal GlobalTheory.ConjPeriod
open GlobalTheory.MemLoc Formalism.BasicNotions.Examples₂.LB GroundTheory.LocalField.FormalGroup
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.ConjDegree

variable {l : ℕ} [hl : Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P}

variable (T : LocTied l P AI) (K : FinExt l)

def jB : Per.Acris l →+* P.R.B := T.eB.symm.toRingHom.comp (algebraMap (Per.Acris l) (Per.Bcris l))

theorem uj_eq (j : ℕ) (a : Per.Acris l) : uj T j a = P.ιB (jB T ((phiA l ^ j) a)) := rfl

end GlobalTheory.ConjDegree

end
