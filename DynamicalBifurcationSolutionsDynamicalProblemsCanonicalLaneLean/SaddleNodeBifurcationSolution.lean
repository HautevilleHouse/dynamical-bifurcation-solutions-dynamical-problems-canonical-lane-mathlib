import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.BifurcationDiagramClassification

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure SaddleNodeBifurcationSolutionPackage where
  equilibriumBefore : Prop
  equilibriumAfter : Prop
  foldPoint : Prop
  solutionCurve : Type u
  persistence : Prop

structure SaddleNodeBifurcationSolutionEvidence (S : SaddleNodeBifurcationSolutionPackage) where
  equilibriumBeforeClosed : S.equilibriumBefore
  equilibriumAfterClosed : S.equilibriumAfter
  foldPointClosed : S.foldPoint
  persistenceClosed : S.persistence

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse