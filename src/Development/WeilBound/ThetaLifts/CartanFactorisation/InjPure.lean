import Development.WeilBound.ThetaLifts.CartanFactorisation.Kills0Of
import Development.WeilBound.ThetaLifts.CartanFactorisation.RealTrans
import Development.WeilBound.ThetaLifts.CartanFactorisation.ArchimedeanEvaluationVector
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FibRepApply
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmegaEquivInducedFibreStatement
import Development.WeilBound.CoreStatements.LocalThetaKernels.IwasMain
import Development.WeilBound.CoreStatements.LocalThetaKernels.EvlMain
import Development.WeilBound.ThetaLifts.CartanFactorisation.Cartan
import Development.WeilBound.ThetaLifts.FrameEstimates.WeilConv
import Development.WeilBound.CoreStatements.LocalThetaKernels.LocpairU
import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfDict
import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.FullOfSoLoc

noncomputable section

namespace PositivityTheory.ThKF

open GlobalTheory.ThK

theorem iLeft (hT : ThetaBasic) : ILeft := fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hp _ hΦ g =>
  I_left unimodularity_holds hT hp hΦ g

end PositivityTheory.ThKF

end
