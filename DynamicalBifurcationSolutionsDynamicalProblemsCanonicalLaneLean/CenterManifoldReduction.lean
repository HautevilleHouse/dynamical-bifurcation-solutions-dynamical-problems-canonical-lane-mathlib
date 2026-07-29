import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure CenterManifoldReduction {P : DynamicalBifurcationParameter} where
  centerManifoldExists : Prop
  centerManifoldDimension : Nat
  localInvariant : Prop
  topologicalNormalForm : Prop
  centerManifoldExistsClosed : centerManifoldExists
  centerManifoldDimensionPositive : centerManifoldDimension > 0
  localInvariantClosed : localInvariant
  topologicalNormalFormClosed : topologicalNormalForm

def CenterManifoldReductionClosed (C : CenterManifoldReduction P) : Prop :=
  C.centerManifoldExists ∧ C.localInvariant ∧ C.topologicalNormalForm

theorem center_manifold_reduction_closed_from_evidence (C : CenterManifoldReduction P) : CenterManifoldReductionClosed C :=
  And.intro C.centerManifoldExistsClosed (And.intro C.localInvariantClosed C.topologicalNormalFormClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse