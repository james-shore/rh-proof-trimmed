import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockSizesSum
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LeviBlockExponent GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability

noncomputable section

open GlobalTheory.SmGL GlobalTheory.PRep

namespace GlobalTheory.LeviBlockExponentLocal

theorem toSubmodule_bot' {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V] (ρ : Representation ℂ G V) :
    (⊥ : Subrepresentation ρ).toSubmodule = ⊥ := rfl

theorem toSubmodule_top' {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V] (ρ : Representation ℂ G V) :
    (⊤ : Subrepresentation ρ).toSubmodule = ⊤ := rfl

end GlobalTheory.LeviBlockExponentLocal
