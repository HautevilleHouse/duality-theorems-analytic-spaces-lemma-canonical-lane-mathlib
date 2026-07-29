import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.AnalyticDualityLayer

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnalyticDualityLayerClosed analyticDualityLayerCertificate

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact analytic_duality_layer_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean
end HautevilleHouse