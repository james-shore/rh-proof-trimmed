import Mathlib
import Formalism.DoubleCosetMeasures.StatementZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitarySecondCountable.Assembly
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralSpanAlgebra.Burnside
import Formalism.SharpRestriction.Divisibility.AbsolutelyIrreducibleSpan
import Formalism.Statement
import Formalism.SharpRestriction.Divisibility.ZetaProductPairs
import Formalism.SharpRestriction.Divisibility.InnerProductFormulaField
import Formalism.SharpRestriction.Divisibility.KudlaSiegelWeil
import Formalism.SharpRestriction.Divisibility.CanonicalTranslateJets
import Formalism.LocalRingCardinality.DataRRMetric
import Formalism.SharpRestriction.LevelLetterCocycles.TwGood
import Formalism.SharpRestriction.Divisibility.GoodPartEigenspaceKernelSplitting
import Formalism.SharpRestriction.Divisibility.FamilyThetaDenominatorValues

set_option linter.unusedVariables false

namespace Formalism.MainNotions.DIV

end Formalism.MainNotions.DIV

noncomputable section

namespace Formalism.MainNotions.DIV

open Formalism.BasicNotions Formalism.BasicNotions.TH MeasureTheory

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem archimedean_statement_iff_local (D : D7) (X : Formalism.MainNotions.SchurIrreducible.Prov D) :
    Formalism.MainNotions.SchurIrreducible.Stmt D X ↔ Formalism.MainNotions.SchurIrreducible.ArchimedeanRallisLocal D X := Iff.rfl

def Qof (D : D7) (μ : D.what₂.Tup) (ι : D.what₂.Amb μ →ₗ[ℂ] D.what₂.EE) : Submodule ℂ (D.what₂.Amb μ) :=
  D.what₂.V0 μ ⊓ (D.what₂.V0 μ ⊓ LinearMap.ker ι)ᗮ

def BijOn (D : D7) (μ : D.what₂.Tup) (ι : D.what₂.Amb μ →ₗ[ℂ] D.what₂.EE) : Prop :=
  Function.Bijective (ι.domRestrict (Qof D μ ι))

end Formalism.MainNotions.DIV

end

namespace Formalism.MainNotions.DIV

end Formalism.MainNotions.DIV

