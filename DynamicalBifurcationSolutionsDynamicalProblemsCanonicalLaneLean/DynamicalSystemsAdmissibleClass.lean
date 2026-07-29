import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

structure DynamicalAdmittedObject where
  phaseSpace : Type
  topology : TopologicalSpace phaseSpace
  vectorField : phaseSpace → phaseSpace
  bifurcationParameter : Set ℝ
  equilibriumPoint : phaseSpace
  equilibriumCondition : vectorField equilibriumPoint = equilibriumPoint

structure AdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.equilibriumCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse