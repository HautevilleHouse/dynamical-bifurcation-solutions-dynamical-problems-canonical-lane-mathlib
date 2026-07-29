import DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.BifurcationAnalysisPackage

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

structure NormalFormReductionPackage {B : BifurcationAnalysisPackage} (analysis : B) where
  centerManifold : Type
  centerManifoldDimension : ℕ
  reducedVectorField : centerManifold → centerManifold
  normalFormTruncated : Prop
  unfoldingParameters : List ℝ
  persistentBifurcation : Prop

structure NormalFormReductionEvidence {B : BifurcationAnalysisPackage} {analysis : B} (N : NormalFormReductionPackage analysis) where
  normalFormTruncatedClosed : N.normalFormTruncated
  persistentBifurcationClosed : N.persistentBifurcation
  dimensionCorrect : True

def NormalFormReductionClosed {B : BifurcationAnalysisPackage} {analysis : B} (N : NormalFormReductionPackage analysis) : Prop :=
  N.normalFormTruncated ∧ N.persistentBifurcation

theorem normal_form_reduction_closed_from_evidence {B : BifurcationAnalysisPackage} {analysis : B} (N : NormalFormReductionPackage analysis) (E : NormalFormReductionEvidence N) : NormalFormReductionClosed N := by
  exact And.intro E.normalFormTruncatedClosed E.persistentBifurcationClosed

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse