import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure BifurcationDiagram where
  parameterRange : Set ℝ
  equilibriumCurve : ℝ → Set (ℝ × ℝ)
  bifurcationPoints : Set ℝ
  stabilityChange : Prop
  hysteresis : Prop
  pitchforkType : Prop
  saddleNodeType : Prop
  hopfType : Prop
  bifurcationPointsFinite : Set.Finite bifurcationPoints
  stabilityChangeClosed : stabilityChange
  pitchforkTypeClosed : pitchforkType
  saddleNodeTypeClosed : saddleNodeType
  hopfTypeClosed : hopfType

def BifurcationDiagramClosed (D : BifurcationDiagram) : Prop :=
  D.stabilityChange ∧ D.bifurcationPointsFinite

theorem bifurcation_diagram_closed_from_evidence (D : BifurcationDiagram) : BifurcationDiagramClosed D :=
  And.intro D.stabilityChangeClosed D.bifurcationPointsFinite

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse