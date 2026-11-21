import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemSupportBDIff
open CategoryTheory AlgebraicGeometry Limits NumberField IsDedekindDomain Filter Topology Matrix
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.CxPts GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.ChernReg
open scoped TensorProduct ContDiff

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.ShFam

section PullPresents

variable {X Z : Scheme.{0}} [IsIntegral X] (B : EffCartierData Z) (f : X ⟶ Z)
  (h : f (genericPoint X) ∉ B.idealSheaf.support)

theorem fnOf_pull_g (J J' : PUnit.{1} → B.ι)
    (hg : genericPoint X ∈ (B.lb.pull f).U J ⊓ (B.lb.pull f).U J') :
    fnOf _ hg ((B.lb.pull f).g J J' : Γ(X, (B.lb.pull f).U J ⊓ (B.lb.pull f).U J')) =
      (f.stalkMap (genericPoint X)).hom ((Z.presheaf.germ _ _
        (⟨mem_pull.1 hg.1, mem_pull.1 hg.2⟩ : f (genericPoint X) ∈ B.U (J PUnit.unit) ⊓ B.U (J' PUnit.unit))).hom
        (B.trans (J PUnit.unit) (J' PUnit.unit) : Γ(Z, B.U (J PUnit.unit) ⊓ B.U (J' PUnit.unit)))) := by
  show fnOf _ hg (Units.val (∏ _k : PUnit.{1}, _ ^ (1 : ℤ))) = _
  rw [Fintype.prod_unique]
  erw [zpow_one, LB.val_res, fnOf_resG]
  exact (Scheme.Hom.germ_stalkMap_apply f (B.U (J PUnit.unit) ⊓ B.U (J' PUnit.unit)) (genericPoint X) _ _).symm

end PullPresents

end GlobalTheory.ShFam
