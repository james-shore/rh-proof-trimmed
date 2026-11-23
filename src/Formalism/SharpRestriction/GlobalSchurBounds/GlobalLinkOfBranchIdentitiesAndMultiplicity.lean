import Formalism.SharpRestriction.GlobalSchurBounds.LinkTied
import Formalism.LocalToGlobal.GlobalTheory.TransposeBaseMatrixInfinity
import Formalism.LocalToGlobal.GlobalTheory.GL6.RndLinkAdmTOf
import Formalism.LocalToGlobal.GlobalTheory.GL6.ValuationDetBasisChange
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV
import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassE
import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LenLen2OfCoord

noncomputable section

namespace Formalism.MainNotions

open Formalism.BasicNotions Formalism.MainNotions.Lnk Formalism.MainNotions.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory Formalism.MainNotions.RT

variable {eps : ℝ}

theorem tCV_of_ties (Fm : FamP eps) (tCl : tCVTies Fm) :
    ∃ x0 : ℝ, ∀ x ≥ x0, ∀ (i : Fm.Ix x) u, Nonempty (flipTwoThree.ColVal (Fm.D x i) u) :=
  tCV_of_tied Fm ColValS.colValOfTiedS_holds tCl

end Formalism.MainNotions

end
