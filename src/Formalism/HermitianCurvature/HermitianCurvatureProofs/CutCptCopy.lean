import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLimENFMain
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermDone
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFIdPairPtw
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFIdPolAll
import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferProductMonic
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalisationTypedIndependentExponent
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.DoubleCosetEqPreimage
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondKernelPropertyKernel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block32EqZeroOfUnipotent
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PointwiseStabiliserParametrisationBijective
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SplitFrameTransitive
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictOrthogonalComplementNondeg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CentreBlockStructure
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MapMulVolumeOfSubgroup
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LiftingTheory
import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermExpansionMatrixFunction
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RaisingConstantEqNablaStar
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UsCompose
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondPolynomialClauses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfCVUnderIntOfParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionUpdateSums
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarInverseSimplification
import Formalism.HermitianCurvature.HermitianCurvatureProofs.XiYZhatIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CellSmoothness
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChainRuleSmooth.ExpIntertwine
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ListSumSplittings
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirrorDecomposition.HpkRowEsI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NfRadOrder0OfRadRed
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselNeZeroOfCyclicOrbit
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FormSplit
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChainX1
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsFderivChiBound
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftLocalBuiltPlaces
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormSumLeOfGram
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnFoldRev
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnergyReal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.L2BoundAtBuiltPlaceHolds

open Lean Meta Elab Command

namespace Formalism.FourierDecayAlt.P.CptCopy

def special : List (Name × Name) :=
  [(`Formalism.FourierDecayAlt.P.pb_formPos, `Formalism.FourierDecayAlt.P.module_form_pos_compact_support),
   (`Formalism.FourierDecayAlt.P.list_duality_level_group, `Formalism.FourierDecayAlt.P.size_standard_compact),
   (`Formalism.FourierDecayAlt.P.vector_isomorphism_levels, `Formalism.FourierDecayAlt.P.vector_isomorphism_compact_support)]

def manual : List Name :=
  [`Formalism.FourierDecayAlt.P5.ThmPActual, `Formalism.FourierDecayAlt.KB.SizeStd, `Formalism.FourierDecayAlt.KB.VIso, `Formalism.FourierDecayAlt.P.PBL.FormPos,
   `Formalism.FourierDecayAlt.P.standard_pairing_of_heads,
   `Formalism.FourierDecayAlt.P.TBBx5.FormNonneg, `Formalism.FourierDecayAlt.P.TBBx5.form_re_nonneg, `Formalism.FourierDecayAlt.P.TBBx5.form_cs,
   `Formalism.FourierDecayAlt.P.TBBx5.formNonneg_of, `Formalism.FourierDecayAlt.P.CutBP.posAt_of_cpt, `Formalism.FourierDecayAlt.P.TBBx5.integral_three_at_place_of_parts,
   `Formalism.FourierDecayAlt.P.TBBx5.integral_four_at_place_of_parts, `Formalism.FourierDecayAlt.P.CutBP.truncated_limit_positivity_holds, `Formalism.FourierDecayAlt.P.CutBP.glGram]

def roots : List Name :=
  [`Formalism.FourierDecayAlt.P.CutBP.thmBpAt_main4, `Formalism.FourierDecayAlt.P.CutBP.germ_truncation_positive, `Formalism.FourierDecayAlt.P.CutBP.block_growth_bound_of_compact_coef,
   `Formalism.FourierDecayAlt.P.CutBP.nFTopFormAll_of_ptw, `Formalism.FourierDecayAlt.P.CutBP.top_identity_of_domination_limits, `Formalism.FourierDecayAlt.P.CutBP.nfPolFormAll_of_top]

def terminal (n : Name) : Bool := manual.contains n || (special.lookup n).isSome

def suffixed : Name → Name
  | .str p s => .str p (s ++ "Cpt")
  | n => .str n "Cpt"

def proposals (ci : ConstantInfo) : Array Name :=
  ci.type.getUsedConstants ++ ((ci.value? (allowOpaque := true)).map (·.getUsedConstants) |>.getD #[])

partial def go (env : Environment) (n : Name) (st : NameSet × NameSet × Array Name) : NameSet × NameSet × Array Name :=
  let (seen, tainted, order) := st
  if seen.contains n || terminal n then st else
  let seen := seen.insert n
  match env.find? n with
  | none => (seen, tainted, order)
  | some ci =>
    let us := proposals ci
    let (seen, tainted, order) :=
      us.foldl (fun s c => if (`Formalism).isPrefixOf c then go env c s else s) (seen, tainted, order)
    if us.any (fun c => terminal c || tainted.contains c) then (seen, tainted.insert n, order.push n)
    else (seen, tainted, order)

def toCopy (env : Environment) : NameSet × Array Name :=
  let (_, tainted, order) := roots.foldl (fun s r => go env r s) ({}, {}, #[])
  (tainted, order)

def mapName (tainted : NameSet) (n : Name) : Name :=
  match special.lookup n with
  | some m => m
  | none => if manual.contains n || tainted.contains n then suffixed n else n

def subst (tainted : NameSet) (e : Expr) : Expr :=
  e.replace fun
    | .const n ls => some (.const (mapName tainted n) ls)
    | _ => none

def copyAll (defsOnly : Bool) : CoreM Nat := do
  let (tainted, order) := toCopy (← getEnv)
  let mut k := 0
  for n in order do
    let env ← getEnv
    let n' := mapName tainted n
    if env.contains n' then continue
    let some ci := env.find? n | throwError "missing {n}"
    match ci with
    | .defnInfo d =>
      addDecl (.defnDecl { d with name := n', type := subst tainted d.type, value := subst tainted d.value })
      k := k + 1
    | .thmInfo t =>
      if defsOnly then continue
      addDecl (.thmDecl { t with name := n', type := subst tainted t.type, value := subst tainted t.value })
      k := k + 1
    | _ => throwError "cannot copy {n}"
  return k

elab "cpt_copy_thms" : command => do
  let k ← liftCoreM (copyAll false)
  logInfo m!"copied {k} declarations"

end Formalism.FourierDecayAlt.P.CptCopy
