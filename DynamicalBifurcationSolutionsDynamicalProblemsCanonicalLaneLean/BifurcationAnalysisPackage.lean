import DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

structure BifurcationAnalysisPackage where
  parameterSpace : Type
  topology : TopologicalSpace parameterSpace
  bifurcationPoint : parameterSpace
  vectorFieldFamily : parameterSpace → (DynamicalAdmittedObject.phaseSpace → DynamicalAdmittedObject.phaseSpace)
  equilibriumFamily : parameterSpace → DynamicalAdmittedObject.phaseSpace
  linearization : parameterSpace → (DynamicalAdmittedObject.phaseSpace → DynamicalAdmittedObject.phaseSpace)
  eigenvalueCrossing : Prop
  nondegeneracyCondition : Prop
  bifurcationType : String

structure BifurcationAnalysisEvidence (B : BifurcationAnalysisPackage) where
  eigenvalueCrossingClosed : B.eigenvalueCrossing
  nondegeneracyConditionClosed : B.nondegeneracyCondition
  bifurcationTypeRecorded : True

def BifurcationAnalysisClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.eigenvalueCrossing ∧ B.nondegeneracyCondition

theorem bifurcation_analysis_closed_from_evidence (B : BifurcationAnalysisPackage) (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.eigenvalueCrossingClosed E.nondegeneracyConditionClosed

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse