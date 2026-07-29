import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.DualityObjectDatum

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean

structure AdmittedDualityObject where
  object : DualityObjectDatum
  substrateClosed : Prop
  bridgeWitness : bridgeClosed ({
    object := admittedDualityObject
    endpointSatisfied := True
    remainderRecorded := True
    gateWitness := Or.inl trivial
  } : AdmissibleClass)
  gateWitness : gateClosed ({
    object := admittedDualityObject
    endpointSatisfied := True
    remainderRecorded := True
    gateWitness := Or.inl trivial
  } : AdmissibleClass)
  classicalRemainderCarried : True

def admittedDualityObject : DualityObjectDatum := primitiveDualityObjectDatum

end DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean
end HautevilleHouse