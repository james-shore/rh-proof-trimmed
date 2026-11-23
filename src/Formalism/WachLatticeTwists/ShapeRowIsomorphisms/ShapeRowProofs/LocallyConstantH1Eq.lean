import Formalism.WachLatticeTwists.ShapeRowIsomorphisms.Statement
import Formalism.CharacterColumnKernels.IdempotentNormalForms.LengthKerOfDetEqZero
import Formalism.CharacterColumnKernels.IdempotentNormalForms.GlobalConcreteOf

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core]

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.JT
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal
open ReciprocityTheory.ChartRestriction.T2 (GK PadicCoeff FracTop IsCyc IsCycOn)

noncomputable section

namespace Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology

theorem locallyConstantH1_eq {O Γ M : Type} [CommRing O] [Group Γ] [TopologicalSpace Γ] [AddCommGroup M] [Module O M]
    (ρ : Representation O Γ M) : lcH1 ρ = ReciprocityTheory.ChartRestriction.T2.HcLC ρ := rfl

end Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology
