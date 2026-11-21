import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsL2OnDiagonalOfIsL2Metric

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.LieVB (omega unitSec dUnit sec sec_hom)
open GlobalTheory.CxForm (relCot dRel)
open GlobalTheory.QCoh (pullbackSections)

namespace GlobalTheory.RelCotAb

variable {S : Scheme.{0}} (A : Over S) [GrpObj A]

def unitPair : A ⟶ A ⊗ A := lift (𝟙 A) (toUnit A ≫ η[A])

end GlobalTheory.RelCotAb

namespace GlobalTheory.RelCotAb

variable {S : Scheme.{0}} (A : Over S) [GrpObj A]

theorem unitPair_fst : (unitPair A).left ≫ pullback.fst A.hom A.hom = 𝟙 A.left :=
  congrArg Over.Hom.left (lift_fst (𝟙 A) (toUnit A ≫ η[A]))

variable [QuasiSeparated A.hom]

instance quasiCompact_unitPair : QuasiCompact (unitPair A).left :=
  have : QuasiCompact ((unitPair A).left ≫ pullback.fst A.hom A.hom) := unitPair_fst A ▸ inferInstance
  .of_comp _ (pullback.fst A.hom A.hom)

end GlobalTheory.RelCotAb

namespace GlobalTheory.RelCotAb

end GlobalTheory.RelCotAb

namespace GlobalTheory.RelCotAb

end GlobalTheory.RelCotAb
