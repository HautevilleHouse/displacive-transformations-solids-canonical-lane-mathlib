import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure SoftModePhononDispersion (crystalLattice : Type u) where
  phononBranch : Type v
  frequencyGap : Prop
  zoneCenterSoftening : Prop
  couplingToStrain : Prop

structure SoftModePhononEvidence (S : SoftModePhononDispersion crystalLattice) where
  frequencyGapClosed : S.frequencyGap
  zoneCenterSofteningClosed : S.zoneCenterSoftening
  couplingToStrainClosed : S.couplingToStrain

def SoftModePhononClosed (S : SoftModePhononDispersion crystalLattice) : Prop :=
  S.frequencyGap ∧ S.zoneCenterSoftening ∧ S.couplingToStrain

theorem soft_mode_phonon_closed_from_evidence
    (S : SoftModePhononDispersion crystalLattice) (E : SoftModePhononEvidence S) :
    SoftModePhononClosed S := by
  exact And.intro E.frequencyGapClosed
    (And.intro E.zoneCenterSofteningClosed E.couplingToStrainClosed)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse