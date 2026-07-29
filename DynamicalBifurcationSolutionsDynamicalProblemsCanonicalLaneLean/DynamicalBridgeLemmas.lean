import DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.equilibriumCondition

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse