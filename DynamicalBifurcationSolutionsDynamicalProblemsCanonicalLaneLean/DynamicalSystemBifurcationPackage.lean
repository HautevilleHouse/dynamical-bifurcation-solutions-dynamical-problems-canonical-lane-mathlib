import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure DynamicalSystemBifurcationPackage where
  stateSpace : Type u
  parameterSpace : Type v
  vectorField : stateSpace -> parameterSpace -> stateSpace
  equilibriumPoint : stateSpace -> parameterSpace -> Prop
  bifurcationPoint : parameterSpace -> Prop
  linearization : stateSpace -> parameterSpace -> Type w
  eigenvalueCrossing : Prop

structure DynamicalSystemBifurcationEvidence (P : DynamicalSystemBifurcationPackage) where
  equilibriumExists : Prop
  bifurcationPointDetected : P.bifurcationPoint
  eigenvalueCrossingVerified : P.eigenvalueCrossing

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse