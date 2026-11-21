import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsL2OnDiagonalOfIsL2Metric
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AnnSeqShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqGenericPoint
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedComplementDimBound
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopologicalKrullDimEqSucc
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SpanFinrankMaximalIdealLeNcardOfLeSupSq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeightMaximalLePrimeAddDim
import ReciprocityTheory.CommutativeAlgebra.PolynomialHeights.PolyCM
import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.Bridge
import ReciprocityTheory.AnalyticForms.RegularLocalRings.IntToRatA
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfSwap2
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsLinearMapMultilinearMapBaseChange
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EventuallySectionAndRelAmplePowDiv

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set Filter Topology MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.Cartier GlobalTheory.ChartGlue GlobalTheory.ArInt GlobalTheory.TwistTop

namespace GlobalTheory.DualHeight

variable {k : Type} [CommRing k] {X Y : Scheme.{0}} {p : X ⟶ Sp k}

structure Anti (N L : HermLB p) (π : N.B.ι → L.B.ι) : Prop where
  le : ∀ c, N.B.U c ≤ L.B.U (π c)
  g : ∀ (Z : Scheme.{0}) (r : Z ⟶ X) (z : Z) c c', r z ∈ N.B.U c → r z ∈ N.B.U c' →
    gm r z (N.B.U c ⊓ N.B.U c') (N.B.g c c') = (gm r z (L.B.U (π c) ⊓ L.B.U (π c')) (L.B.g (π c) (π c')))⁻¹
  φ : ∀ σ c, ∀ y ∈ ptsIn p σ (N.B.U c), (N.φ σ).φ c y = -(L.φ σ).φ (π c) y

variable {N L : HermLB p} {π : N.B.ι → L.B.ι}

end GlobalTheory.DualHeight
