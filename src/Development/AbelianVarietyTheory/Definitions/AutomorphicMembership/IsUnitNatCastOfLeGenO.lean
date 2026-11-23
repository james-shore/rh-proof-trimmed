import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EpsZeroCompOfIsTanAtG
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtOmPHtEval
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsHTLatOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameBaseChangeRingHom
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsTrans
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsStalkFactor
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AffineOpenChartCompStructureEqSpMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameCover

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.ModuliIntegralCharts GlobalTheory.ShFam

namespace GlobalTheory.LocM

namespace FlagFam

end FlagFam

variable {D : D7} {A : Amb D} {N j : ℕ} {S : Sig A N j} {κ : Lv A} {p : ℕ} (ct : At S κ p)

def flgTrue : FlgSt ct := flgOf ct (IsHTLatOf (htmTrue ct))

namespace HTm

variable {ct} {Z : ct.Mdl}

variable (ct Z) in

def htFam : (flgTrue ct).FlagData Z := classFam (IsHTLatOf (htmTrue ct)) Z

end HTm

end GlobalTheory.LocM
