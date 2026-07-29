import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  basisVectors : bravaisLattice → Type v
  atomicPositions : bravaisLattice → Type w
  latticeSymmetry : Prop
  primitiveCellVolume : Prop
  latticeSymmetryClosed : latticeSymmetry
  primitiveCellVolumeClosed : primitiveCellVolume

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  latticeSymmetryClosed : C.latticeSymmetry
  primitiveCellVolumeClosed : C.primitiveCellVolume

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.latticeSymmetry ∧ C.primitiveCellVolume

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage)
    (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.latticeSymmetryClosed E.primitiveCellVolumeClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse