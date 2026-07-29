import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean.BifurcationDiagramClassification

namespace HautevilleHouse
namespace DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean

structure HopfBifurcationSolutionPackage where
  equilibriumStabilityChange : Prop
  limitCycleEmergence : Prop
  frequency : Type u
  amplitude : Type v
  criticality : Prop -- supercritical or subcritical

structure HopfBifurcationSolutionEvidence (H : HopfBifurcationSolutionPackage) where
  equilibriumStabilityChangeClosed : H.equilibriumStabilityChange
  limitCycleEmergenceClosed : H.limitCycleEmergence
  criticalityClosed : H.criticality

end DynamicalBifurcationSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse