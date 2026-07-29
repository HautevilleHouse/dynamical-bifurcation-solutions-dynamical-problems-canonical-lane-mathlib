import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure NormalFormDynamics where
  normalFormType : String
  unfoldingTerms : Prop
  truncationOrder : ℕ
  resonanceConditions : Prop
  poincareNormalForm : Prop

structure NormalFormDynamicsEvidence (N : NormalFormDynamics) where
  unfoldingTermsClosed : N.unfoldingTerms
  resonanceConditionsClosed : N.resonanceConditions
  poincareNormalFormClosed : N.poincareNormalForm

def NormalFormDynamicsClosed (N : NormalFormDynamics) : Prop :=
  N.unfoldingTerms ∧ N.resonanceConditions ∧ N.poincareNormalForm

theorem normal_form_dynamics_closed_from_evidence
    (N : NormalFormDynamics) (E : NormalFormDynamicsEvidence N) :
    NormalFormDynamicsClosed N := by
  exact And.intro E.unfoldingTermsClosed (And.intro E.resonanceConditionsClosed E.poincareNormalFormClosed)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse
