import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure FixedPointStructure {P : DynamicalBifurcationParameter} where
  phaseSpace : Type u
  phaseTopology : TopologicalSpace phaseSpace
  fixedPoint : phaseSpace
  parameterValue : P.parameterType
  implicitFunction : Prop
  transversalityCondition : Prop
  nondegeneracyCondition : Prop
  implicitFunctionClosed : implicitFunction
  transversalityConditionClosed : transversalityCondition
  nondegeneracyConditionClosed : nondegeneracyCondition

def FixedPointStructureClosed {P : DynamicalBifurcationParameter} (F : FixedPointStructure P) : Prop :=
  F.implicitFunction ∧ F.transversalityCondition ∧ F.nondegeneracyCondition

theorem fixed_point_structure_closed_from_evidence {P : DynamicalBifurcationParameter} (F : FixedPointStructure P) : FixedPointStructureClosed F :=
  And.intro F.implicitFunctionClosed (And.intro F.transversalityConditionClosed F.nondegeneracyConditionClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse