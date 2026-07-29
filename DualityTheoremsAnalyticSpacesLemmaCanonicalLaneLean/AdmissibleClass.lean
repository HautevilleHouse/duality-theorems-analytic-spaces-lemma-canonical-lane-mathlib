import canonicalLaneMathlib.AdmissibleClass
import DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.AnalyticDualityLayer
import DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.SerreDualityBridge
import DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.GrothendieckDualityLayer

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean

structure DualityAdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedDualityClosure (A : DualityAdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean
end HautevilleHouse
