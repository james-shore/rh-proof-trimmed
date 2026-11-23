import Mathlib
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GPowPf
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.RosatiAdjPow
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowOActOfGlobalFns
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.PsiInOfComponent
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsCoreOfIsAbelianScheme
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsPolAVGenericFibreOfTriple
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabCancel
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSecUnitClosedFibre
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsLevelGoodAtAllPrimesAndIdx
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPointOfPeriod
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LambdaBundleAdjointOfWeilPairingAdjointStatement
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TheoremOfCubePolAbelianSchemeStatement
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PrincipalTorusAlgebraic
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsIsMonHomOfMapLattice
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.TypeFnPeriodExistModuliNonempty
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditionalStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHoldStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsPelUniformisationCompleteDvr

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.MainNotions.ModuliIntegralCharts.H1

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PowActProbe

theorem powOActSt_iff : PowOActSt ↔
    ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (V : Type) [CommRing V] [IsDomain V]
      [IsDiscreteValuationRing V] (t : SAB H (Sp V)) (P : PELUnif (maximalIdeal V) t)
      (n : ℕ) (D' : DegData V (maximalIdeal V)) (pD : IsPowDeg D'.toPre P.D.toPre n),
      ∃ (M : Module (𝓞 E) D'.toPre.X) (oD' : @DegPre.OAct V _ _ (𝓞 E) _ H.starRing D'.toPre M),
        (∀ (a : 𝓞 E) (x : D'.toPre.X) (i : Fin n),
          pD.xe (M.toDistribMulAction.toMulAction.toSMul.smul a x) i =
            P.mod.toDistribMulAction.toMulAction.toSMul.smul a (pD.xe x i)) ∧
        ∀ (a : 𝓞 E) (i : Fin n), (letI := H.starRing; oD'.onB.act a) ≫ pD.pw.pr i =
          pD.pw.pr i ≫ (letI := H.starRing; P.oD.onB.act a) := Iff.rfl

end GlobalTheory.PowActProbe
