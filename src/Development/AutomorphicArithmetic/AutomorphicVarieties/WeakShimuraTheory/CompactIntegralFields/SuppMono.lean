import Development.AutomorphicArithmetic.AutomorphicVarieties.WeakShimuraTheory.CompactIntegralFields.GysinAl
import Development.AutomorphicArithmetic.AutomorphicVarieties.WeakShimuraTheory.CompactIntegralFields.RestrT

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual Formalism.HC ReciprocityTheory.Gal IsLocalRing Polynomial UpperTheory.V.Base UpperTheory.V.Alg UpperTheory.V.HV UpperTheory.V.GradeZeroInterpolatingElement UpperTheory.V.Ws

private theorem supp_mono {R : Type} [CommRing R] {S S' : Finset (ℤ × ℤ)} (h : S ⊆ S') {X : M4 R} (hX : SuppM S X) :
    SuppM S' X := fun i j hij hw => hX i j hij fun hs => hw (h hs)

