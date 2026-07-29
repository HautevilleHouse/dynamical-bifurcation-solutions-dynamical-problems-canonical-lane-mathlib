import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure NormalFormClassification where
  unfoldingDimension : ℕ
  normalFormType : String
  codimension : ℕ
  universalUnfolding : Prop
  equivalenceTransform : Prop
  universalUnfoldingClosed : universalUnfolding
  equivalenceTransformClosed : equivalenceTransform
  codimensionPositive : codimension > 0

def NormalFormClassificationClosed (N : NormalFormClassification) : Prop :=
  N.universalUnfolding ∧ N.equivalenceTransform ∧ N.codimensionPositive

theorem normal_form_classification_closed_from_evidence (N : NormalFormClassification) : NormalFormClassificationClosed N :=
  And.intro N.universalUnfoldingClosed (And.intro N.equivalenceTransformClosed N.codimensionPositive)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse