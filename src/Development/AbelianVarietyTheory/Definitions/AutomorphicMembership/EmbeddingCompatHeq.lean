import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormsOver
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.UnitaryWeightExponentVectorSignatureWeightMuZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsStalkFactor
import Formalism.LocalToGlobal.LatticeGeometry.CmTypeMeetsConjugatePair
import Formalism.LocalToGlobal.LatticeGeometry.Inhabited
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsKeySectionUnif
import Formalism.LocalToGlobal.ProjectiveLattices.MulCMemSec
import Formalism.LocalToGlobal.ProjectiveLattices.AllTest
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.NotIsCompactUnivFv
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsSmulOfPreservesFrameOrbits

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.Geo GlobalTheory.Toroidal GlobalTheory.TrueGeo

namespace GlobalTheory.ShFam.AsmCheck

variable {D : D7} {A : Amb D}

theorem trRul_rfl {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {m : MD H}
    {c c' : Coeff m.1} (hle : c.F ≤ c'.F) (f : Rul m.2.2 c) :
    trRul (rfl : m = m) hle f = GlobalTheory.FieldBC.rulBC hle f := rfl

end GlobalTheory.ShFam.AsmCheck
