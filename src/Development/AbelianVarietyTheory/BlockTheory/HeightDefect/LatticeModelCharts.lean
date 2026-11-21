import Mathlib
import Formalism.SharpRestriction.Divisibility.AbelianOpenPart.AbelianAt
import Formalism.SharpRestriction.Divisibility.ModuliIntegralCharts
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.NonemptyCoefficientFieldPrime
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory
open Formalism.MainNotions.ModuliIntegralCharts Formalism.MainNotions.DIV.Cons NumberField
open scoped PowerSeries Cardinal

namespace GlobalTheory.IndefiniteRowSideFullHecke.LatticeModelCharts

abbrev SpecOf (R : Type) [CommRing R] : Scheme.{0} := Spec (CommRingCat.of R)

abbrev specMap {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) : SpecOf S ⟶ SpecOf R :=
  Spec.map (CommRingCat.ofHom f)

def genPt (R : Type) [CommRing R] [IsDomain R] : SpecOf R := (⊥ : PrimeSpectrum R)

def clPt (R : Type) [CommRing R] [IsLocalRing R] : SpecOf R := IsLocalRing.closedPoint R

structure Code : Type where

  val : ℝ

structure SmallField (p : ℕ) : Type where

  S : Set Code
  [fld : NontriviallyNormedField S]
  [ultra : IsUltrametricDist S]
  [ac : IsAlgClosed S]
  [cpl : CompleteSpace S]
  [ch0 : CharZero S]
  norm_p : ‖(p : S)‖ = (p : ℝ)⁻¹

def SmallField.toCF {p : ℕ} (F : SmallField p) : CF p :=
  @CF.mk p F.S F.fld F.ultra F.ac F.cpl F.ch0 F.norm_p

def OC {p : ℕ} (F : CF p) : ValuationSubring F.C := (NormedField.valuation (K := F.C)).valuationSubring

theorem mem_OC {p : ℕ} (F : CF p) (x : F.C) : x ∈ OC F ↔ ‖x‖ ≤ 1 := by
  rw [OC, Valuation.mem_valuationSubring_iff, NormedField.valuation_apply, ← NNReal.coe_le_coe]
  rfl

def OC.map {p : ℕ} {F F' : CF p} (φ : F.C →+* F'.C) (hφ : ∀ x, ‖φ x‖ = ‖x‖) : OC F →+* OC F' :=
  (φ.comp (OC F).subtype).codRestrict (OC F') fun x => by
    rw [mem_OC]
    exact (hφ x).trans_le ((mem_OC F x).1 x.2)

structure OLam (p : ℕ) [Fact p.Prime] where

  O : Type
  [cr : CommRing O]
  [dom : IsDomain O]
  [dvr : IsDiscreteValuationRing O]
  [alg : Algebra ℤ_[p] O]
  [fin : Module.Finite ℤ_[p] O]
  inj : Function.Injective (algebraMap ℤ_[p] O)

attribute [instance] OLam.cr OLam.dom OLam.dvr OLam.alg OLam.fin

variable {p : ℕ} [Fact p.Prime]

def genFib {B : OLam p} (M : ModelG B.O) : M.Z.Opens :=
  M.str ⁻¹ᵁ (PrimeSpectrum.basicOpen (p : B.O) : (SpecOf B.O).Opens)

structure Model (B : OLam p) extends ModelG B.O where

  U : Z.Opens
  nonempty : Nonempty Z
  normal : ∀ z : Z, IsDomain (Z.presheaf.stalk z) ∧ IsIntegrallyClosed (Z.presheaf.stalk z)
  proper : IsProper str
  flat : Flat str
  semi : ReciprocityTheory.ChartRestriction.G.Semi.IsSemiAbelian G.X
  U_le : U ≤ genFib toModelG
  U_dense : (genFib toModelG : Set Z) ⊆ closure (U : Set Z)
  ab_U : IsAbSch (bchG U.ι G)

namespace Model

variable {B : OLam p} (M : Model B)

structure Pt : Type where

  F : SmallField p

  yt : SpecOf (OC F.toCF) ⟶ M.Z
  gen_mem : yt (genPt _) ∈ M.U

variable {M}

def Pt.fld (y : M.Pt) : CF p := y.F.toCF

def Pt.y (y : M.Pt) : SpecOf y.fld.C ⟶ M.Z := specMap (OC y.F.toCF).subtype ≫ y.yt

def Pt.red (y : M.Pt) : M.Z := y.yt (clPt _)

def Pt.G (y : M.Pt) : GrpSch (SpecOf (OC y.F.toCF)) := bchG y.yt M.G

def Pt.Good (y : M.Pt) : Prop := IsAbSch y.G

end Model

structure DVRing (B : OLam p) where

  V : Type
  [cr : CommRing V]
  [dom : IsDomain V]
  [dvr : IsDiscreteValuationRing V]
  [cpl : IsAdicComplete (IsLocalRing.maximalIdeal V) V]

  j : B.O →+* V
  j_inj : Function.Injective j
  j_local : IsLocalHom j

attribute [instance] DVRing.cr DVRing.dom DVRing.dvr DVRing.cpl

structure DVRing.FinExt {B : OLam p} (V W : DVRing B) where

  i : V.V →+* W.V
  i_inj : Function.Injective i
  i_fin : i.Finite
  i_j : i.comp V.j = W.j

def DVRing.FinExt.refl {B : OLam p} (V : DVRing B) : V.FinExt V :=
  ⟨RingHom.id _, fun _ _ h => h, RingHom.Finite.id _, rfl⟩

section Eval

open scoped PowerSeries.WithPiTopology

theorem exists_evalU (V : Type) [CommRing V] [IsLocalRing V] [IsAdicComplete (IsLocalRing.maximalIdeal V) V]
    (π : V) (hπ : π ∈ IsLocalRing.maximalIdeal V) :
    ∃ φ : V⟦X⟧ →+* V, (∀ a, φ (PowerSeries.C a) = a) ∧ φ PowerSeries.X = π := by
  letI : WithIdeal V := ⟨IsLocalRing.maximalIdeal V⟩
  have hI : IsAdic (IsLocalRing.maximalIdeal V) := rfl
  obtain ⟨h1, h2⟩ := hI.isAdicComplete_iff.mp inferInstance
  have ha : PowerSeries.HasEval π := WithIdeal.isTopologicallyNilpotent_of_mem hπ
  refine ⟨PowerSeries.eval₂Hom (φ := RingHom.id V) continuous_id ha, fun a => ?_, ?_⟩
  · rw [PowerSeries.coe_eval₂Hom, PowerSeries.eval₂_C]; rfl
  · rw [PowerSeries.coe_eval₂Hom, PowerSeries.eval₂_X]

def evalU (V : Type) [CommRing V] [IsLocalRing V] [IsAdicComplete (IsLocalRing.maximalIdeal V) V]
    (π : V) (hπ : π ∈ IsLocalRing.maximalIdeal V) : V⟦X⟧ →+* V :=
  (exists_evalU V π hπ).choose

end Eval

def DVRing.Unif {B : OLam p} (V : DVRing B) : Type := {π : V.V // Irreducible π}

theorem DVRing.Unif.mem {B : OLam p} {V : DVRing B} (π : V.Unif) : π.1 ∈ IsLocalRing.maximalIdeal V.V :=
  π.2.not_isUnit

def DVRing.Unif.sec {B : OLam p} {V : DVRing B} (π : V.Unif) : SpecOf V.V ⟶ SpecOf V.V⟦X⟧ :=
  specMap (evalU V.V π.1 π.mem)

namespace Model

variable {B : OLam p} (M : Model B)

structure DVPt (V : DVRing B) : Type where

  yt : SpecOf V.V ⟶ M.Z
  comm : yt ≫ M.str = specMap V.j
  gen_mem : yt (genPt _) ∈ M.U

structure Chart (V : DVRing B) : Type where

  χ : SpecOf V.V⟦X⟧ ⟶ M.Z
  comm : χ ≫ M.str = specMap ((PowerSeries.C (R := V.V)).comp V.j)

variable {M}

def Chart.At {V : DVRing B} (c : M.Chart V) (π : V.Unif) (y : M.DVPt V) : Prop := π.sec ≫ c.χ = y.yt

def Chart.G {V : DVRing B} (c : M.Chart V) : GrpSch (SpecOf V.V⟦X⟧) := bchG c.χ M.G

variable (M)

end Model

theorem isAbSch_trivial (S : Scheme.{0}) : ReciprocityTheory.ChartRestriction.G.Semi.IsAbelianScheme (Grp.trivial (Over S)).X :=
  GlobalTheory.isAbelianScheme_powObj_of_isAbelianScheme _ (GlobalTheory.Diag.isAbelianScheme_unit S) 0

def Model.base (B : OLam p) : Model B where
  Z := SpecOf B.O
  str := 𝟙 _
  G := Grp.trivial _
  U := (𝟙 (SpecOf B.O) : _ ⟶ _) ⁻¹ᵁ (PrimeSpectrum.basicOpen (p : B.O) : (SpecOf B.O).Opens)
  nonempty := ⟨genPt _⟩
  normal := fun (z : PrimeSpectrum B.O) => by
    haveI : IsLocalization.AtPrime ((Spec.structureSheaf B.O).presheaf.stalk z) z.asIdeal :=
      StructureSheaf.IsLocalization.to_stalk B.O z
    have h1 : IsDomain ((Spec.structureSheaf B.O).presheaf.stalk z) :=
      IsLocalization.isDomain_of_le_nonZeroDivisors (M := z.asIdeal.primeCompl) _
        z.asIdeal.primeCompl_le_nonZeroDivisors
    have h2 : IsIntegrallyClosed ((Spec.structureSheaf B.O).presheaf.stalk z) :=
      isIntegrallyClosed_of_isLocalization (R := B.O) _ z.asIdeal.primeCompl
        z.asIdeal.primeCompl_le_nonZeroDivisors
    exact ⟨h1, h2⟩
  proper := inferInstance
  flat := inferInstance
  semi := GlobalTheory.isSemiAbelian_of_isAbelianScheme _ (isAbSch_trivial _)
  U_le := le_rfl
  U_dense := subset_closure
  ab_U := by
    have h := GlobalTheory.isAbelianScheme_pullback_obj
      (Scheme.Opens.ι ((𝟙 (SpecOf B.O) : _ ⟶ _) ⁻¹ᵁ (PrimeSpectrum.basicOpen (p : B.O) : (SpecOf B.O).Opens))) _
      (isAbSch_trivial (SpecOf B.O))
    exact ⟨h.comm, h.proper, h.smooth, h.geomConnected⟩

end GlobalTheory.IndefiniteRowSideFullHecke.LatticeModelCharts

end
