import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure BifurcationDiagramAnalysisPackage {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} (P : PhasePortraitPackage B) where
  bifurcationPointsIdentified : Prop
  bifurcationTypesClassified : Prop
  stabilitySwitchesTracked : Prop
  branchContinuationTraced : Prop

structure BifurcationDiagramAnalysisEvidence {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} {P : PhasePortraitPackage B} (D : BifurcationDiagramAnalysisPackage P) where
  bifurcationPointsIdentifiedClosed : D.bifurcationPointsIdentified
  bifurcationTypesClassifiedClosed : D.bifurcationTypesClassified
  stabilitySwitchesTrackedClosed : D.stabilitySwitchesTracked
  branchContinuationTracedClosed : D.branchContinuationTraced

def BifurcationDiagramAnalysisClosed {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} {P : PhasePortraitPackage B} (D : BifurcationDiagramAnalysisPackage P) : Prop :=
  D.bifurcationPointsIdentified ∧ D.bifurcationTypesClassified ∧ D.stabilitySwitchesTracked ∧ D.branchContinuationTraced

theorem bifurcation_diagram_analysis_closed_from_evidence {G : DynamicalSystemPackage} {B : BifurcationParameterPackage G} {P : PhasePortraitPackage B} (D : BifurcationDiagramAnalysisPackage P) (E : BifurcationDiagramAnalysisEvidence D) : BifurcationDiagramAnalysisClosed D := by
  exact And.intro E.bifurcationPointsIdentifiedClosed (And.intro E.bifurcationTypesClassifiedClosed (And.intro E.stabilitySwitchesTrackedClosed E.branchContinuationTracedClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse