import DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.NormalFormReductionPackage

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

structure SolutionBranchingPackage {B : BifurcationAnalysisPackage} {analysis : B} {N : NormalFormReductionPackage analysis} (normal : N) where
  bifurcationParameterRange : Set ℝ
  criticalParameterValue : ℝ
  solutionFamily : ℝ → DynamicalAdmittedObject.phaseSpace
  branchingDirection : String
  stabilityChange : Prop
  amplitudeScaling : ℝ

structure SolutionBranchingEvidence {B : BifurcationAnalysisPackage} {analysis : B} {N : NormalFormReductionPackage analysis} {normal : N} (S : SolutionBranchingPackage normal) where
  stabilityChangeClosed : S.stabilityChange
  branchingDirectionRecorded : True

def SolutionBranchingClosed {B : BifurcationAnalysisPackage} {analysis : B} {N : NormalFormReductionPackage analysis} {normal : N} (S : SolutionBranchingPackage normal) : Prop :=
  S.stabilityChange

theorem solution_branching_closed_from_evidence {B : BifurcationAnalysisPackage} {analysis : B} {N : NormalFormReductionPackage analysis} {normal : N} (S : SolutionBranchingPackage normal) (E : SolutionBranchingEvidence S) : SolutionBranchingClosed S := by
  exact E.stabilityChangeClosed

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse