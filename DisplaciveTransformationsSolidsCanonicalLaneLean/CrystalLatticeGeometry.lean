import DisplaciveTransformationsSolidsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure CrystalLatticeGeometry where
  bravaisLatticeType : String
  primitiveVectors : List (ℝ × ℝ × ℝ)
  unitCellVolume : ℝ
  symmetryGroup : Type
  symmetryGroupClosed : Prop
  unitCellVolumePositive : unitCellVolume > 0

structure CrystalLatticeEvidence (G : CrystalLatticeGeometry) where
  symmetryGroupClosed : G.symmetryGroupClosed
  unitCellVolumePositiveClosed : G.unitCellVolumePositive

def CrystalLatticeClosed (G : CrystalLatticeGeometry) : Prop :=
  G.symmetryGroupClosed ∧ G.unitCellVolumePositive

theorem crystal_lattice_closed_from_evidence (G : CrystalLatticeGeometry) (E : CrystalLatticeEvidence G) :
    CrystalLatticeClosed G := by
  exact And.intro E.symmetryGroupClosed E.unitCellVolumePositiveClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse