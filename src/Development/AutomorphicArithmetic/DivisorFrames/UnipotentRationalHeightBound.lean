import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoublingConfigurationLeviIntegralImports
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LintegralBoundLtTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelDomainReduction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPurelyImaginaryElement
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.LanglandsSquareIntegrable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementActsOnFrameColumns
import GroundTheory.GlobalFields.Adele.IntegersLattice
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdaptedBasisWittFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalLeviClosureMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondConfigurationUnramifiedIdentity

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
section
open GlobalTheory.LeviDecomp GlobalTheory.StabCosetDomain
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

private theorem incV_mulVec {n k : ℕ} (g : Matrix (Fin n) (Fin k) E) (x : Fin k → E) :
    incV F (g *ᵥ x) = incM F g *ᵥ incV F x :=
  funext fun i => RingHom.map_mulVec (inclR (F := F) (AF F)) g x i

end

