import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure MartensiteNucleationBarrier (nucleusGeometry : Type u) where
  criticalSize : Prop
  activationEnergy : Prop
  defectAssisted : Prop
  athermalCharacter : Prop

structure MartensiteNucleationEvidence (M : MartensiteNucleationBarrier nucleusGeometry) where
  criticalSizeClosed : M.criticalSize
  activationEnergyClosed : M.activationEnergy
  defectAssistedClosed : M.defectAssisted
  athermalCharacterClosed : M.athermalCharacter

def MartensiteNucleationClosed (M : MartensiteNucleationBarrier nucleusGeometry) : Prop :=
  M.criticalSize ∧ M.activationEnergy ∧ M.defectAssisted ∧ M.athermalCharacter

theorem martensite_nucleation_closed_from_evidence
    (M : MartensiteNucleationBarrier nucleusGeometry) (E : MartensiteNucleationEvidence M) :
    MartensiteNucleationClosed M := by
  exact And.intro E.criticalSizeClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.defectAssistedClosed E.athermalCharacterClosed))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse