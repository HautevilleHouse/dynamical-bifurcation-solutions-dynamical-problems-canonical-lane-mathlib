import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure DynamicalBifurcationParameter where
  parameterType : Type u
  initialValue : parameterType
  bifurcationValue : parameterType
  parameterRange : Set parameterType
  parameterSmooth : Prop
  parameterRangeNonempty : parameterRange.Nonempty
  bifurcationValueInRange : bifurcationValue ∈ parameterRange

def BifurcationParameterClosed (P : DynamicalBifurcationParameter) : Prop :=
  P.parameterSmooth ∧ P.parameterRangeNonempty ∧ P.bifurcationValueInRange

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse