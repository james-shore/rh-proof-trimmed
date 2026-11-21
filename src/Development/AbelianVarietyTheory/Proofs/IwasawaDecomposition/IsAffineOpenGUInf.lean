import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolarizationBaseChangeModels

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.TorRef GlobalTheory.FlagMod GlobalTheory.Reg GlobalTheory.PolFin
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv mkT tanM_ext tv_mem)
open MonoidalCategory CartesianMonoidalCategory MonObj Formalism.L2.Pj

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GlueLie

section Lift

variable {X A : Scheme.{0}} (f : X ⟶ A) [IsOpenImmersion f] {S S' : Type} [CommRing S] [CommRing S']

theorem range_subset (U : X.Opens) (z : Sp S ⟶ A) (h : ⊤ ≤ z ⁻¹ᵁ (f ''ᵁ U)) : Set.range z ⊆ Set.range f := by
  rintro _ ⟨x, rfl⟩
  obtain ⟨y, -, hy⟩ := h (Set.mem_univ x)
  exact ⟨y, hy⟩

def liftPt (U : X.Opens) (z : Sp S ⟶ A) (h : ⊤ ≤ z ⁻¹ᵁ (f ''ᵁ U)) : Sp S ⟶ X :=
  IsOpenImmersion.lift f z (range_subset f U z h)

@[reassoc (attr := simp)]
theorem liftPt_fac (U : X.Opens) (z : Sp S ⟶ A) (h : ⊤ ≤ z ⁻¹ᵁ (f ''ᵁ U)) : liftPt f U z h ≫ f = z :=
  IsOpenImmersion.lift_fac _ _ _

end Lift

end GlobalTheory.GlueLie

namespace GlobalTheory.GlueLie

end GlobalTheory.GlueLie

namespace GlobalTheory.GlueLie

end GlobalTheory.GlueLie
