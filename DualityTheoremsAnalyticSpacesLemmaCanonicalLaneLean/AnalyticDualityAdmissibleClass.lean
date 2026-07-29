import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean

structure AnalyticSheafObject where
  sourceKey : String
  sheafName : String
  site : String
  property : String
  dualityWitness : String
  boundaryCarried : Bool

def primitiveAnalyticSheafObject : AnalyticSheafObject :=
  { sourceKey := "DualityTheoremsAnalyticSpacesLemmaCanonicalLane",
    sheafName := "Structure sheaf of analytic space",
    site := "Analytic site",
    property := "Coherent sheaf duality",
    dualityWitness := "Serre duality on complex manifolds",
    boundaryCarried := true }

structure AdmissibleClass where
  object : AnalyticSheafObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  ⟨A.object.sourceKey = "DualityTheoremsAnalyticSpacesLemmaCanonicalLane",
    A.object.sheafName = "Structure sheaf of analytic space",
    A.object.property = "Coherent sheaf duality",
    A.object.dualityWitness = "Serre duality on complex manifolds",
    A.object.boundaryCarried⟩

end DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean
end HautevilleHouse