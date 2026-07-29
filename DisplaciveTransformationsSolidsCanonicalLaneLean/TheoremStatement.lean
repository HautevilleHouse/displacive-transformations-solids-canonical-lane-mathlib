import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure DisplaciveAdmittedObject where
  lattice : Type u
  topology : TopologicalSpace lattice
  displacementField : Type v
  transformationLaw : Prop
  conclusion : transformationLaw

def DisplaciveWitnessClosed (O : DisplaciveAdmittedObject) : Prop :=
  O.transformationLaw

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse