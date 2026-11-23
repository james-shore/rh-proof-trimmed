import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.TeichmullerDepth.PsJetEqToJetOfNonempty
import Formalism.LocalToGlobal.CharacterGerms.RowTieVal
import Formalism.LocalToGlobal.CharacterGerms.PlugUP
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermCut
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBGen
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBFr

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.TorRef

noncomputable section

namespace GlobalTheory.TraitChartForm

theorem jK_apply_eq_bot (R : Type) [CommRing R] [IsDomain R] (p : Sp (FractionRing R)) :
    (jK R) p = (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum R) := by
  apply PrimeSpectrum.ext
  change Ideal.comap (algebraMap R (FractionRing R)) p.asIdeal = ⊥
  rw [@Ideal.eq_bot_of_prime _ _ p.asIdeal p.isPrime]
  exact Ideal.comap_bot_of_injective _ (IsFractionRing.injective _ _)

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H} {Xo : Moduli D l}
  {c : Coeff l}

end GlobalTheory.TraitChartForm

