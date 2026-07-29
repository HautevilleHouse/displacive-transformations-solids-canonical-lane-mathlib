import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure AdmissibleClass where
  object : DisplaciveTransformationSpace
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DisplaciveTransformationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
