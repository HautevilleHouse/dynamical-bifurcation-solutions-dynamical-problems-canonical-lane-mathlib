import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure HopfBifurcationPackage where
  equilibrium : Type u
  vectorField : Type v
  parameterPassingEigenvalue : Prop
  transversalityCondition : Prop
  periodicOrbitExists : Prop

structure HopfBifurcationEvidence (H : HopfBifurcationPackage) where
  parameterPassingEigenvalueClosed : H.parameterPassingEigenvalue
  transversalityConditionClosed : H.transversalityCondition
  periodicOrbitExistsClosed : H.periodicOrbitExists

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.parameterPassingEigenvalue ∧ H.transversalityCondition ∧ H.periodicOrbitExists

theorem hopf_bifurcation_closed_from_evidence
    (H : HopfBifurcationPackage) (E : HopfBifurcationEvidence H) :
    HopfBifurcationClosed H := by
  exact And.intro E.parameterPassingEigenvalueClosed (And.intro E.transversalityConditionClosed E.periodicOrbitExistsClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse
