import Formalism.LocalToGlobal.ProjectiveLattices.PartitionExtendByZeroAntitone
import Formalism.LocalToGlobal.ProjectiveLattices.VAtVNeBot
import Formalism.LocalToGlobal.ProjectiveLattices.RulInst
import Formalism.LocalToGlobal.ProjectiveLattices.LatPAddRight
import Formalism.LocalToGlobal.ProjectiveLattices.PetersonNormSubspace
import Formalism.LocalToGlobal.ProjectiveLattices.IntegrableOnIntegrand
import Formalism.LocalToGlobal.ProjectiveLattices.ThGerm
import Formalism.LocalToGlobal.ProjectiveLattices.ChartDirectionsIntegral
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SABBaseChangeSt

set_option synthInstance.maxHeartbeats 400000

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.PullbackSections

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.L2.Pj
open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj

def sabMapCast {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {S S' : Scheme.{0}} {t' : SAB H S'}
    {t : SAB H S} {f f' : S' ⟶ S} (m : SABMap t' t f) (h : f = f') : SABMap t' t f' := h ▸ m

theorem sabMapCast_φ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {S S' : Scheme.{0}}
    {t' : SAB H S'} {t : SAB H S} {f f' : S' ⟶ S} (m : SABMap t' t f) (h : f = f') : (sabMapCast m h).φ = m.φ := by
  subst h
  rfl

end ReciprocityTheory.ChartRestriction.G.PullbackSections
