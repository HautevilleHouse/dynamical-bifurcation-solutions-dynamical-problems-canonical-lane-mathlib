import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

def ConstrainedBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifurcation_endgame (A : AdmissibleClass) : ConstrainedBifurcationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse