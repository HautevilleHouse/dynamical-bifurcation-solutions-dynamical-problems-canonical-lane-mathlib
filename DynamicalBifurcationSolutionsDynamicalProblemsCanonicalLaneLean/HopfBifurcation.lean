import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure HopfBifurcationPackage where
  parameterCrossing : Prop
  eigenvaluesCrossImaginaryAxis : Prop
  periodicOrbitBranching : Prop
  stabilityChange : Prop
  parameterCrossingClosed : parameterCrossing
  eigenvaluesCrossImaginaryAxisClosed : eigenvaluesCrossImaginaryAxis
  periodicOrbitBranchingClosed : periodicOrbitBranching
  stabilityChangeClosed : stabilityChange

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.parameterCrossing ∧ H.eigenvaluesCrossImaginaryAxis ∧ H.periodicOrbitBranching ∧ H.stabilityChange

theorem hopf_bifurcation_closed_from_evidence (H : HopfBifurcationPackage) : HopfBifurcationClosed H := by
  exact And.intro H.parameterCrossingClosed
    (And.intro H.eigenvaluesCrossImaginaryAxisClosed
      (And.intro H.periodicOrbitBranchingClosed H.stabilityChangeClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse