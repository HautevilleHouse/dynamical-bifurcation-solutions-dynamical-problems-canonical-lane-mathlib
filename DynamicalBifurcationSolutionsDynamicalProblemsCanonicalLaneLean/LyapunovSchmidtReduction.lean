import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure LyapunovSchmidtReduction where
  fReduction : Prop
  bifurcationEquation : Prop
  nondegeneracyCondition : Prop
  solutionBranches : Prop

structure LyapunovSchmidtReductionEvidence (L : LyapunovSchmidtReduction) where
  fReductionClosed : L.fReduction
  bifurcationEquationClosed : L.bifurcationEquation
  nondegeneracyConditionClosed : L.nondegeneracyCondition
  solutionBranchesClosed : L.solutionBranches

def LyapunovSchmidtReductionClosed (L : LyapunovSchmidtReduction) : Prop :=
  L.fReduction ∧ L.bifurcationEquation ∧ L.nondegeneracyCondition ∧ L.solutionBranches

theorem lyapunov_schmidt_reduction_closed_from_evidence
    (L : LyapunovSchmidtReduction) (E : LyapunovSchmidtReductionEvidence L) :
    LyapunovSchmidtReductionClosed L := by
  exact And.intro E.fReductionClosed (And.intro E.bifurcationEquationClosed (And.intro E.nondegeneracyConditionClosed E.solutionBranchesClosed))

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse
