import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSmoothDetPair
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsCellOfIsSubquotient
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParIndJacPlacing
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.NormalisedParabolicInductionReindexEquiv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorTorusCharacter
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne

noncomputable section

namespace GlobalTheory.IndLineGL.MidColumn

open GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.IndLineGL
open scoped TensorProduct

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

section Transport

variable {α : Type} [Fintype α] [LinearOrder α] {m m' : α → Type} [∀ a, Fintype (m a)] [∀ a, DecidableEq (m a)]
  [∀ a, Fintype (m' a)] [∀ a, DecidableEq (m' a)] {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n']
  [DecidableEq n']

variable (k) in

def leviMap (τ : ∀ a, m' a ≃ m a) : Levi k m' →* Levi k m :=
  MonoidHom.pi fun a => (Units.map (Matrix.reindexAlgEquiv k k (τ a)).toMonoidHom).comp
    (Pi.evalMonoidHom (fun a => GL (m' a) k) a)

theorem val_leviMap (τ : ∀ a, m' a ≃ m a) (l : Levi k m') (a : α) :
    ((leviMap k τ l a : GL (m a) k) : Matrix (m a) (m a) k) = Matrix.reindex (τ a) (τ a) (l a : Matrix (m' a) (m' a) k) :=
  rfl

end Transport

end GlobalTheory.IndLineGL.MidColumn

namespace GlobalTheory.IndLineGL.MidColumn

end GlobalTheory.IndLineGL.MidColumn
