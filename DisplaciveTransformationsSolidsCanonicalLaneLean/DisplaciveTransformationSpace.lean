import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure CrystalLattice where
  carrier : Type
  bravaisVectors : List (carrier × carrier × carrier)

structure DisplaciveTransformationSpace where
  lattice : CrystalLattice
  parentPhase : Prop
  productPhase : Prop
  displacementField : Prop
  transformationPath : Prop
  conclusion : transformationPath

def DisplaciveTransformationClosed (O : DisplaciveTransformationSpace) : Prop :=
  O.transformationPath

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
