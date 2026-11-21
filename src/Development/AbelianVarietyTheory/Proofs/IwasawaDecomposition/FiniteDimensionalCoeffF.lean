import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BlowPolSt
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ModuliSchemeLevelMapsHeckePoints
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.NsmulMemSmulTop
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelMapFiniteEtaleSurjective
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelQuotientRepresentsReduced
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsQProjOverOfIsIso
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.CardTorsionAbelianVariety
import Development.AbelianVarietyTheory.BlockTheory.CMModuli.RelativeGroupHatForm

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.LvCover

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

def top (l₁ l₂ : Level H) : Level H :=
  { l₁ with
    A := l₁.A * l₁.M * l₂.M * l₂.A
    A_pos := Nat.mul_pos (Nat.mul_pos (Nat.mul_pos l₁.A_pos (by have := l₁.three_le; omega))
      (by have := l₂.three_le; omega)) l₂.A_pos }

def side (l₁ l₂ : Level H) : Level H := { l₂ with A := (top l₁ l₂).A, A_pos := (top l₁ l₂).A_pos }

theorem top_A (l₁ l₂ : Level H) : (top l₁ l₂).A = l₁.A * l₁.M * l₂.M * l₂.A := rfl

theorem side_A (l₁ l₂ : Level H) : (side l₁ l₂).A = (top l₁ l₂).A := rfl

end GlobalTheory.LvCover

namespace GlobalTheory.LvCover

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

def intMap {K L : IntermediateField ℚ ℂ} (h : K ≤ L) : 𝓞 K →+* 𝓞 L :=
  RingOfIntegers.mapRingHom (IntermediateField.inclusion h).toRingHom

variable {D : Datum H}

def GoodMap {l l' : Level H} {Xo : Moduli D l} {Xo' : Moduli D l'} {c : Coeff l} {c' : Coeff l'} (h : c'.F ≤ c.F)
    (Y : GlobalTheory.TorRef.GMod Xo c) (Y' : GlobalTheory.TorRef.GMod Xo' c') (r : Xo.XF c ⟶ Xo'.XF c') : Prop :=
  Nonempty (GlobalTheory.ShFam.TwMap (RingEquiv.refl (𝓞 E)) Y.oF.t Y'.oF.t r) ∧ Function.Surjective r ∧
    r ≫ pullback.snd _ _ = pullback.snd _ _ ≫ spMap (IntermediateField.inclusion h).toRingHom

end GlobalTheory.LvCover

namespace GlobalTheory.LvCover

end GlobalTheory.LvCover

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.TorRef

namespace GlobalTheory.LvCover

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H}

theorem GoodMap.comp {l l' l'' : Level H} {Xo : Moduli D l} {Xo' : Moduli D l'} {Xo'' : Moduli D l''} {c : Coeff l}
    {c' : Coeff l'} {c'' : Coeff l''} {h : c'.F ≤ c.F} {h' : c''.F ≤ c'.F} {Y : GMod Xo c} {Y' : GMod Xo' c'}
    {Y'' : GMod Xo'' c''} {r : Xo.XF c ⟶ Xo'.XF c'} {r' : Xo'.XF c' ⟶ Xo''.XF c''} (hr : GoodMap h Y Y' r)
    (hr' : GoodMap h' Y' Y'' r') : GoodMap (h'.trans h) Y Y'' (r ≫ r') := by
  obtain ⟨⟨m⟩, s, e⟩ := hr
  obtain ⟨⟨m'⟩, s', e'⟩ := hr'
  obtain ⟨n, -⟩ := GlobalTheory.LevelCover.sab_comp (GlobalTheory.ShFam.TwMap.reflEquiv _ _ _ m)
    (GlobalTheory.ShFam.TwMap.reflEquiv _ _ _ m') rfl
  refine ⟨⟨(GlobalTheory.ShFam.TwMap.reflEquiv _ _ _).symm n⟩, fun z => ?_, ?_⟩
  · obtain ⟨y, rfl⟩ := s' z
    obtain ⟨x, rfl⟩ := s y
    exact ⟨x, rfl⟩
  · rw [Category.assoc, e', ← Category.assoc, e, Category.assoc, GlobalTheory.IndefiniteRowSideFullHecke.RelativeGroupHatForm.spMap_inclusion_comp]

end GlobalTheory.LvCover
