import DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.DynamicalGateLemmas

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblems

def ConstrainedDynamicalBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_bifurcation_endgame (A : AdmissibleClass) : ConstrainedDynamicalBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalBifurcationSolutionsDynamicalProblems
end HautevilleHouse