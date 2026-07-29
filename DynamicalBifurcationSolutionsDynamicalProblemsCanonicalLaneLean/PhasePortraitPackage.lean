import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure PhasePortraitPackage {G : DynamicalSystemPackage} (B : BifurcationParameterPackage G) where
  phaseFlowDefined : Prop
  equilibriumSetParameterized : Prop
  stableUnstableManifoldsExist : Prop
  connectingOrbitsTracked : Prop

structure PhasePortraitEvidence {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} (P : PhasePortraitPackage B) where
  phaseFlowDefinedClosed : P.phaseFlowDefined
  equilibriumSetParameterizedClosed : P.equilibriumSetParameterized
  stableUnstableManifoldsExistClosed : P.stableUnstableManifoldsExist
  connectingOrbitsTrackedClosed : P.connectingOrbitsTracked

def PhasePortraitClosed {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} (P : PhasePortraitPackage B) : Prop :=
  P.phaseFlowDefined ∧ P.equilibriumSetParameterized ∧ P.stableUnstableManifoldsExist ∧ P.connectingOrbitsTracked

theorem phase_portrait_closed_from_evidence {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} (P : PhasePortraitPackage B) (E : PhasePortraitEvidence P) : PhasePortraitClosed P := by
  exact And.intro E.phaseFlowDefinedClosed (And.intro E.equilibriumSetParameterizedClosed (And.intro E.stableUnstableManifoldsExistClosed E.connectingOrbitsTrackedClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse