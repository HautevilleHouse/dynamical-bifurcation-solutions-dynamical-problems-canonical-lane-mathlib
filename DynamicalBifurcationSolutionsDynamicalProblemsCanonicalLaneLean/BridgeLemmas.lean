import dynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalBifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse