import Mathlib
import Development.AutomorphicArithmetic.AutomorphicVarieties.StmtFields
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.KummerTheory.Mk0IdMapCongr
import GroundTheory.GlobalFields.ClassFieldConsequences.HilbertClassField

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal UpperTheory.V.Kum

namespace UpperTheory.V.B3

def pPart (m p : ℕ) : Subgroup (ZMod m)ˣ := (ZMod.unitsMap (Nat.ordCompl_dvd m p)).ker

end UpperTheory.V.B3

end
