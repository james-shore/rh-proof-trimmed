import Formalism.LocalToGlobal.CharacterGerms.BlockMembershipNormOne
import Formalism.LocalToGlobal.CharacterGerms.FinTwoNeOneSub
import Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB
import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm
import Formalism.LocalToGlobal.CharacterGerms.RowTiePHStab
import Formalism.LocalToGlobal.CharacterGerms.HostTraceIdentity
import Formalism.LocalToGlobal.CharacterGerms.PlugUP
import Formalism.LocalToGlobal.CharacterGerms.RowTiePEmbIntSt
import Formalism.LocalToGlobal.CharacterGerms.RowTieDesc
import Formalism.LocalToGlobal.CharacterGerms.RowTiePNabMapSt
import Formalism.LocalToGlobal.CharacterGerms.RowTiePNvalEqSt
import Formalism.LocalToGlobal.CharacterGerms.RowTiePDescSpanFinal
import Formalism.LocalToGlobal.CharacterGerms.RowTieSelf
import Formalism.LocalToGlobal.CharacterGerms.CoeffSubstEqSum
import Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral
import Formalism.LocalToGlobal.CharacterGerms.RowTiePLSmallMain
import Formalism.LocalToGlobal.CharacterGerms.RowTiePAxesSelfSt
import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyDef
import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyRes2
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.LinCombTrivG
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.SplitExtDefs

set_option autoImplicit false

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds Formalism.L2.Pj NumberField Formalism.L2.FormalSeriesBounds.RF
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l) [StarRing (𝓞 E)]

theorem descent_holds : DescentSt Xo c := descent_of (nabMapSt_holds Xo c) descent_span nvalEqSt_holds

variable {Xo c}
variable {C : Type} [Field C] [CharZero C] {V : VF C}
variable {T : CDVR} {io : c.F →+* T.Fr} {y : IntFr Xo c T io} {Orb : Type} [Fintype Orb] {d : ℕ} [NeZero d]

end Formalism.L2.FormalSeriesBounds
