import Mathlib
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.ExistsIsLocallyFreeDataUnique

open CategoryTheory AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi
noncomputable section
namespace GlobalTheory.AbLaw.LbSheafModel
open GlobalTheory.LB
variable {X X' : Scheme.{0}}

theorem isoOfGen_hom {M M' : LB X} (hM : M.IsLB) (hM' : M'.IsLB) (w : LB.Gen (LB.div M' M))
    (hw : w.IsGen) :
    (lbSheaf.isoOfGen hM hM' w hw).hom = lbSheaf.secEquivHom hM hM' (DVR.genSec w hw) := rfl

theorem pullback_unit (π : X' ⟶ X) :
    Nonempty ((Scheme.Modules.pullback π).obj (unitMod X) ≅ unitMod X') := by
  obtain ⟨e⟩ := (lbSheaf.triv_pull_iff (Inh.trivLB_isLB X) π).1
    ⟨⟨fun _ => 1⟩, fun i j => by rw [map_one, map_one, Inh.linComb_triv_g, _root_.one_mul]⟩
  exact ⟨(Scheme.Modules.pullback π).mapIso (trivIso X) ≪≫ e⟩

end GlobalTheory.AbLaw.LbSheafModel
