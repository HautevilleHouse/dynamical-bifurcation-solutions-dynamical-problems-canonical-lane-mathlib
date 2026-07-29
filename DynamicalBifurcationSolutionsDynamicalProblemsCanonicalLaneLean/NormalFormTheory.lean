import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.CenterManifoldReduction

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure NormalFormTheoryPackage where
  normalForm : Type u
  topologicalConjugacy : Prop
  unfolding : Type v
  versalDeformation : Prop
  codimension : Nat

structure NormalFormTheoryEvidence (N : NormalFormTheoryPackage) where
  topologicalConjugacyClosed : N.topologicalConjugacy
  versalDeformationClosed : N.versalDeformation

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse