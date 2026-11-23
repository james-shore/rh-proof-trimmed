import Mathlib
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.EigenfunctionFiniteCoefficients
import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfAutomorphicEmbedding
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RadicalNoFixedVectors
import Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec
import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing
import Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsMemRowHighestTotalDegreeEqTwo
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.ExistsIsFundamentalDomainAndQuotMeasureEq
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsCellOfIsSubquotient
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.RadfordShufflePolynomialHolds

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open scoped InnerProductSpace
open Formalism.MainNotions.KudlaSiegelWeil (Restr)

noncomputable section

namespace GlobalTheory.PureDS

open GlobalTheory.AutMult

section Comb

variable {α β ι : Type} {Hs : α ⊕ β → Type} {E : ι → Type}

open Classical in

def comb (p : ι → α) (A : ∀ i, E i → Hs (.inl (p i))) (y0 : ∀ v, Hs v) (z : ∀ i, E i) : ∀ v, Hs v
  | .inl a => if h : ∃ i, p i = a then cast (congrArg (fun a => Hs (.inl a)) h.choose_spec) (A h.choose (z h.choose))
      else y0 (.inl a)
  | .inr b => y0 (.inr b)

variable {p : ι → α} {A : ∀ i, E i → Hs (.inl (p i))} {y0 : ∀ v, Hs v} {z : ∀ i, E i}

@[simp] theorem comb_inr (b : β) : comb p A y0 z (.inr b) = y0 (.inr b) := rfl

end Comb

end GlobalTheory.PureDS

namespace GlobalTheory.PureDS

end GlobalTheory.PureDS

