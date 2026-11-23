import Development.AutomorphicArithmetic.AutomorphicVarieties.WeakShimuraTheory.EigenbasisLifts.IsTanZero
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CayleyHamiltonSymmetric

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual Formalism.HC ReciprocityTheory.Gal IsLocalRing Polynomial Matrix UpperTheory.V UpperTheory.V.Base UpperTheory.V.Alg UpperTheory.V.HV UpperTheory.V.GradeZeroInterpolatingElement UpperTheory.V.Ws UpperTheory.V.Ws.Eb GlobalTheory.GalOfCusp

theorem UpperTheory.V.Ws.Eb.detRep :
    ∀ {A k G : Type} [CommRing A] [IsLocalRing A] [IsNoetherianRing A] [IsAdicComplete (maximalIdeal A) A] [Field k] (f : A →+* k) [IsLocalHom f] [Group G] {n : ℕ} (D : W.GDet n A G) (ρ : G →* GL (Fin n) k), 1 ≤ n → Function.Surjective f → Full ρ → D.map f = W.GDet.ofRep (W.mat ρ) →
        ∃ ρ' : G →* GL (Fin n) A, D = W.GDet.ofRep (W.mat ρ') ∧ W.pushRep f ρ' = ρ ∧ Full ρ' :=
  _root_.UpperTheory.Reformulated.B.CayleyHamiltonSymmetric.detRep
