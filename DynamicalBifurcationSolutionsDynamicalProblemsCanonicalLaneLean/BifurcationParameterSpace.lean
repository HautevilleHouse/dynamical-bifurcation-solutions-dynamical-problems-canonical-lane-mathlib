import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure BifurcationParameterSpace where
  parameterType : Type u
  topology : TopologicalSpace parameterType
  distinguishedPoint : parameterType
  topologicalDimension : Nat
  distinguishedPointClosed : topologicalDimension = 1

def BifurcationParameterSpaceClosed (B : BifurcationParameterSpace) : Prop :=
  B.topologicalDimension = 1

theorem bifurcation_parameter_space_closed_from_structure (B : BifurcationParameterSpace) :
    BifurcationParameterSpaceClosed B := by
  exact B.distinguishedPointClosed

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse