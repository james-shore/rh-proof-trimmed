import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaCoefficientOfConvergenceStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingHoldsStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateOfWhittakerStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerNondegenerateOfIwasawaStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FockSplittingMaximalCompactStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerAdditivityStatement
import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.UnitarySchrodingerLemmas.SphericalBigCell.IfrBAddOfWeilThetaConvergence
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralMulRight
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrameIntegralEqThetaPartNondegenerate
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightKInvariance
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaConvergenceOfSiegelSet
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SiegelSetUnitary
import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.UnitarySchrodingerLemmas.MatrixInfinitySpan.RealMatch
import GroundTheory.HeightsAndTheta.Theta.EisensteinZeta.AdicFrames.SwmConeHaar
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnipotentAtTauMemStabilizer
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DictionaryMaximalCompactPartsStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AnisotropyOfRangeStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerMaximalCompactGeneralStatement
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.VanishTop2
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.Top7
import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.WhitGenLt
import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.UnitarySchrodingerLemmas.SchrodingerMatching.MatchMono
import Development.WeilBound.CoreStatements.PublishedTheorems.SiegelWeilSchrodinger.Bridge
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.WlocTop
import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.IntegralUnitCoefficients.GenAHf

noncomputable section

namespace PositivityTheory.SiegelWeilCoefficients

open PositivityTheory.Rg.Sw.Glob PositivityTheory.PfSWUS

theorem coefND : CoefND :=
  GlobalTheory.T.nondegenerate_of_whittaker GlobalTheory.T.unfolding_holds (GlobalTheory.T.theta_coefficient_of_convergence wtc)
    (GlobalTheory.T.whittaker_nondegenerate_of_iwasawa (GlobalTheory.T.whittaker_maximal_compact_general whitGenLt (GlobalTheory.T.dictionary_maximal_compact_parts GlobalTheory.T.fock_splitting_maximal_compact GlobalTheory.T.whittaker_additivity
      (PositivityTheory.PfSWUS.HandIAdd.ifrBAdd_of_weilThetaConvergence wtc) PositivityTheory.PfSWUS.SwMatch.matchMono)
      GlobalTheory.T.anisotropy_of_range))

theorem lit : GlobalTheory.Published.SiegelWeilUnitarySchrodingerLit := by
  intro D n V a1 a2 a3 ψ hψ χ hχ hη θ hθ μ 𝓕 hμ ω hω H hH l hl s hs ν hν Φ hΦ g
  exact top7 genA_hf (gIdil_gen wtc genA_hf) coefND D n V ψ χ θ μ ω H l s ν Φ
    ⟨hψ, hχ, hη, hθ, ⟨𝓕, hμ⟩, hω, hH, hl, hs, hν, hΦ⟩ ⟨a1, a2, a3⟩ (by omega) g

theorem field : GlobalTheory.Published.SiegelWeilUnitarySchrodinger :=
  PositivityTheory.Lit1.SWUS.siegelWeilUnitarySchrodinger_of_lit lit wtc

end PositivityTheory.SiegelWeilCoefficients

end
