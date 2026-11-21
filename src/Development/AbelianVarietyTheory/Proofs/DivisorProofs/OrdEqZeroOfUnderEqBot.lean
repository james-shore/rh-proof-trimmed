import Mathlib
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.CoeNonzeroLocusCanonicalEqComplRange

set_option autoImplicit false

open CategoryTheory AlgebraicGeometry

namespace GlobalTheory.SteinFibre

noncomputable def under {X : Scheme.{0}} (z : X) : Ideal Γ(X, ⊤) :=
  Ideal.comap (X.presheaf.germ ⊤ z trivial).hom (IsLocalRing.maximalIdeal (X.presheaf.stalk z))

instance under_isPrime {X : Scheme.{0}} (z : X) : (under z).IsPrime :=
  Ideal.comap_isPrime _ _

end GlobalTheory.SteinFibre
