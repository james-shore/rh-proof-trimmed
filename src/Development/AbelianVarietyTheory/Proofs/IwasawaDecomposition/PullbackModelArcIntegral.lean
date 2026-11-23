import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.TeichmullerDepth.PsJetEqToJetOfNonempty
import Formalism.LocalToGlobal.CharacterGerms.RowTieVal
import Formalism.LocalToGlobal.CharacterGerms.PlugUP
import Formalism.LocalToGlobal.ProjectiveLattices.DepLaws
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermCut
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBGen
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBFr
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsFramedPointChangedByLetters
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcValuation

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.TorRef
open MonoidalCategory CartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.ArcChartExt

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem sabMap_cast_φ {S S' : Scheme.{0}} {t : SAB H S} {t' : SAB H S'} {f₁ f₂ : S' ⟶ S} (h : f₁ = f₂)
    (n : SABMap t' t f₁) : (h ▸ n).φ = n.φ := by
  subst h; rfl

theorem exists_sab_cancel_id {S S' : Scheme.{0}} {t : SAB H S} {t' t'' : SAB H S'} {f : S' ⟶ S}
    (m : SABMap t' t f) (n : SABMap t'' t f) : ∃ m' : SABMap t'' t' (𝟙 S'), n.φ = m'.φ ≫ m.φ := by
  obtain ⟨m', hm'⟩ := GlobalTheory.ObjMaps.exists_sab_cancel (g := 𝟙 S') m ((Category.id_comp f).symm ▸ n)
  exact ⟨m', (sabMap_cast_φ (Category.id_comp f).symm n).symm.trans hm'⟩

end GlobalTheory.ArcChartExt
