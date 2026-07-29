import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure NormalFormPackage where
  bifurcationType : String
  coordinateChangeExists : Prop
  normalFormComputed : Prop
  truncatedToSomeOrder : Prop
  coordinateChangeExistsClosed : coordinateChangeExists
  normalFormComputedClosed : normalFormComputed
  truncatedToSomeOrderClosed : truncatedToSomeOrder

def NormalFormClosed (N : NormalFormPackage) : Prop :=
  N.coordinateChangeExists ∧ N.normalFormComputed ∧ N.truncatedToSomeOrder

theorem normal_form_closed_from_evidence (N : NormalFormPackage) : NormalFormClosed N := by
  exact And.intro N.coordinateChangeExistsClosed
    (And.intro N.normalFormComputedClosed N.truncatedToSomeOrderClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse