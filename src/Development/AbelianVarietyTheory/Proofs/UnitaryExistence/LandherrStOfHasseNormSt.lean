import Mathlib
import Development.AbelianVarietyTheory.Statements.HyperbolicHypotheses.HypothesesInhabitedHyperbolic
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsCongrIffTraceFormsIsometricCm
import Development.AbelianVarietyTheory.PublishedTheorems.Landherr₂.LandherrStIffLandherr

namespace GlobalTheory.LocalQuad

theorem landherrSt_of_hasseNormSt : GlobalTheory.Published.HasseNormSt → GlobalTheory.Published.LandherrSt :=
  fun H => GlobalTheory.Published.landherrSt_of_landherr (landherr_of_hasseNormSt H)

end GlobalTheory.LocalQuad
