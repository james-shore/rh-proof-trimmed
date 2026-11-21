import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfRingHom
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCdvrMkLeContinuum
open CategoryTheory AlgebraicGeometry Limits NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.BdDim GlobalTheory.SiegelTor GlobalTheory.ZM GlobalTheory.CM GlobalTheory.Models
open scoped CategoryTheory.Obj

namespace GlobalTheory.SmallDVR

variable {V : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V]

def traceSubring (K₀ : Subfield (FractionRing V)) : Subring V :=
  K₀.toSubring.comap (algebraMap V (FractionRing V))

theorem mem_traceSubring {K₀ : Subfield (FractionRing V)} {x : V} :
    x ∈ traceSubring K₀ ↔ algebraMap V (FractionRing V) x ∈ K₀ := Iff.rfl

end GlobalTheory.SmallDVR

namespace GlobalTheory.SmallDVR

end GlobalTheory.SmallDVR
