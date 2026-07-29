import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean.DualityBridgeLemmas

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_closure (A : AdmissibleClass) :
    ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem duality_theorem_endgame (A : AdmissibleClass) :
    ConstrainedDualityClosure A := constrained_duality_closure A

end DualityTheoremsAnalyticSpacesLemmaCanonicalLaneLean
end HautevilleHouse