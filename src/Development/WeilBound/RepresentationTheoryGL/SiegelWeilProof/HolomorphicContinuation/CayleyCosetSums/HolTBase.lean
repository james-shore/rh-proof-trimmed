import Mathlib
import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.LowerRankDatum
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AbsoluteConvergence.DerivativeVacuumDilationsAlt
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AbsoluteConvergence.CayleyInverseConjTransposeMulApply

noncomputable section

open Matrix
open scoped ComplexOrder

namespace PositivityTheory.Rg.Sw.HSt.HolTPf

open PositivityTheory.Rg.Sw PositivityTheory.SiegelWeilFormula PositivityTheory.Rg.Sw.AbsSt

variable {n : ℕ}

def Dom (n : ℕ) : Set (Fin n → Fin n → ℂ) :=
  {Z | ((-(Complex.I / 2)) • (Matrix.of Z - (Matrix.of Z)ᴴ)).PosDef}

end PositivityTheory.Rg.Sw.HSt.HolTPf
