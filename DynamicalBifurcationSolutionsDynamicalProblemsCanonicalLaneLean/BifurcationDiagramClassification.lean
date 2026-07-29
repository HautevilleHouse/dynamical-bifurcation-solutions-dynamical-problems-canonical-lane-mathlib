import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.NormalFormTheory

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure BifurcationDiagramClassificationPackage where
  bifurcationDiagram : Type u
  saddleNode : Prop
  hopf : Prop
  pitchfork : Prop
  transcritical : Prop
  periodDoubling : Prop
  classificationComplete : Prop

structure BifurcationDiagramClassificationEvidence (B : BifurcationDiagramClassificationPackage) where
  saddleNodeClosed : B.saddleNode
  hopfClosed : B.hopf
  pitchforkClosed : B.pitchfork
  transcriticalClosed : B.transcritical
  periodDoublingClosed : B.periodDoubling
  classificationCompleteClosed : B.classificationComplete

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse