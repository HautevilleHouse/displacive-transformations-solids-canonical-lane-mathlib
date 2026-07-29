import DisplaciveTransformationsSolidsCanonicalLaneLean.CrystalLatticeGeometry

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure PhononDispersionPackage {G : CrystalLatticeGeometry} where
  dynamicalMatrix : Type
  eigenfrequencies : G.unitCellVolume → ℝ
  acousticSumRule : Prop
  positiveFrequencies : Prop

structure PhononDispersionEvidence {G : CrystalLatticeGeometry} (P : PhononDispersionPackage G) where
  acousticSumRuleClosed : P.acousticSumRule
  positiveFrequenciesClosed : P.positiveFrequencies

def PhononDispersionClosed {G : CrystalLatticeGeometry} (P : PhononDispersionPackage G) : Prop :=
  P.acousticSumRule ∧ P.positiveFrequencies

theorem phonon_dispersion_closed_from_evidence {G : CrystalLatticeGeometry} (P : PhononDispersionPackage G) (E : PhononDispersionEvidence P) :
    PhononDispersionClosed P := by
  exact And.intro E.acousticSumRuleClosed E.positiveFrequenciesClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse