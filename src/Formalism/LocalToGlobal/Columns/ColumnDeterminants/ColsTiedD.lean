import Formalism.LocalToGlobal.Columns.TiedLv
import Formalism.LocalToGlobal.Columns.TiedVal
import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGen
import Formalism.LocalToGlobal.Columns.TiedValDil
import Formalism.LocalToGlobal.Columns.TiedUpDn
import Formalism.LocalToGlobal.Columns.TiedXp
import Formalism.PeriodIntegrals.SplitIntLoc
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SplitPrimeIntegers.ExistsUnitDiff
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGapFacts
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGapLat
import Formalism.LocalRingCardinality.SpanPowerMembership.PlacesOverNcardOfSplitInj
import Formalism.LocalRingCardinality.SpanPowerMembership.RankRecordRowDimensionZero
import Formalism.LocalToGlobal.Columns.TiedXpV
import Formalism.LocalToGlobal.Columns.RecordInst

open NumberField IsDedekindDomain Module Matrix
open scoped TensorProduct

noncomputable section

namespace Formalism.L2.Col.V1

open Formalism.BasicNotions Formalism.L2.Forms

attribute [local instance] Formalism.BasicNotions.Host.cmStar

structure ColHyp (d : ColDat) : Prop where
  sp : SpStd d.toColBase
  host : HostHyp d
  row : RowSame d
  ch : d.Ch.Ok

  lev : d.lev = colLevS d.Ch
  levP : d.levP = (rowTyG d.Ch (rPsharp d.Ch)).inv

variable {d : ColDat} (a : ColArgs d) (h : ColHyp d)

end Formalism.L2.Col.V1
