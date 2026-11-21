import Mathlib
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.IsScalarTowerOfAlgebraMapEq
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsIsGenOfUniqueFactorizationMonoid
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.BijectiveToPushforwardComp
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.BijectiveSmulChartSec
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleIdentityIso

open CategoryTheory AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi
noncomputable section
namespace GlobalTheory.AbLaw
open GlobalTheory.LB
variable {X X' : Scheme.{0}}

abbrev lbSheaf (M : LB X) : X.Modules := toMod M

namespace lbSheaf

variable {M M' : LB X} {V W : X.Opens}

variable (M V) in

def sectionsEquiv : Γ(lbSheaf M, V) ≃ₗ[Γ(X, V)] SecOn M V := LinearEquiv.refl _ _

@[simp] theorem sectionsEquiv_apply (s : Γ(lbSheaf M, V)) : sectionsEquiv M V s = s := rfl

def isoOfGen (hM : M.IsLB) (hM' : M'.IsLB) (w : LB.Gen (LB.div M' M)) (hw : w.IsGen) :
    lbSheaf M ≅ lbSheaf M' := GlobalTheory.LB.isoOfGen hM hM' w hw

theorem existsUnique_gen (hM : M.IsLB) (hM' : M'.IsLB) (φ : lbSheaf M ≅ lbSheaf M') :
    ∃! w : LB.Gen (LB.div M' M), ∃ hw : w.IsGen, isoOfGen hM hM' w hw = φ :=
  existsUnique_gen_of_iso hM hM' φ

def genEquivIso (hM : M.IsLB) (hM' : M'.IsLB) :
    {w : LB.Gen (LB.div M' M) // w.IsGen} ≃ (lbSheaf M ≅ lbSheaf M') :=
  Equiv.ofBijective (fun w => isoOfGen hM hM' w.1 w.2)
    ⟨fun w w' h => Subtype.ext ((existsUnique_gen hM hM' _).unique ⟨w.2, h⟩ ⟨w'.2, rfl⟩),
      fun φ => let ⟨w, ⟨hw, h⟩, _⟩ := existsUnique_gen hM hM' φ; ⟨⟨w, hw⟩, h⟩⟩

@[simp] theorem genEquivIso_apply (hM : M.IsLB) (hM' : M'.IsLB)
    (w : {w : LB.Gen (LB.div M' M) // w.IsGen}) :
    genEquivIso hM hM' w = isoOfGen hM hM' w.1 w.2 := rfl

def secEquivHom (hM : M.IsLB) (hM' : M'.IsLB) :
    LB.Sec (LB.div M' M) ≃ (lbSheaf M ⟶ lbSheaf M') := homEquiv hM hM'

theorem triv_iff (hM : M.IsLB) :
    Triv M ↔ Nonempty (lbSheaf M ≅ unitMod X) :=
  (exists_isGen_iff_nonempty_iso hM).trans ⟨fun ⟨e⟩ => ⟨e.symm⟩, fun ⟨e⟩ => ⟨e.symm⟩⟩

def pullbackIso (hM : M.IsLB) (π : X' ⟶ X) :
    (Scheme.Modules.pullback π).obj (lbSheaf M) ≅ lbSheaf (M.pull π) := GlobalTheory.LB.pullbackIso hM π

theorem triv_pull_iff (hM : M.IsLB) (π : X' ⟶ X) :
    Triv (M.pull π) ↔
      Nonempty ((Scheme.Modules.pullback π).obj (lbSheaf M) ≅ unitMod X') :=
  (triv_iff (LB.isLB_pull hM π)).trans
    ⟨fun ⟨e⟩ => ⟨pullbackIso hM π ≪≫ e⟩, fun ⟨e⟩ => ⟨(pullbackIso hM π).symm ≪≫ e⟩⟩

end lbSheaf

end GlobalTheory.AbLaw
