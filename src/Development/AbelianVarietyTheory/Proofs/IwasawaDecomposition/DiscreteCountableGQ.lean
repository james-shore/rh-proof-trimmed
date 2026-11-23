import Mathlib
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.DiscreteTopologyRationalPointsHermitianSpace

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta NumberField
open scoped TensorProduct

namespace GlobalTheory.RationalCountable

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem discrete_countable_GQ :
    ∀ (D : D7) (V : HSp D), DiscreteTopology (GQ V) ∧ Countable (GQ V) :=
  fun D V => ⟨GlobalTheory.RationalDiscrete.discreteTopology_GQ D V,
    Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.Unfold.countableGamma D.sp.cm.sig V.gram⟩

end GlobalTheory.RationalCountable
