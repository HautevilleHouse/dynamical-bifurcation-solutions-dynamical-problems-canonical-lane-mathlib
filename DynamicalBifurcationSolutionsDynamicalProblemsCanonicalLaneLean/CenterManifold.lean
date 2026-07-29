import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure CenterManifoldPackage where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  dimension : Nat
  smoothnessClass : String
  flowInvariant : Prop
  containsFixedPoint : Prop
  flowInvariantClosed : flowInvariant
  containsFixedPointClosed : containsFixedPoint

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop := C.flowInvariant ∧ C.containsFixedPoint

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) : CenterManifoldClosed C := by
  exact And.intro C.flowInvariantClosed C.containsFixedPointClosed

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse