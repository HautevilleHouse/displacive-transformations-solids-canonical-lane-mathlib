import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure LandauTheoryPackage where
  orderParameter : Type u
  freeEnergy : orderParameter → Type v
  criticalTemperature : Prop
  symmetryBreaking : Prop
  phaseTransitionOrder : Prop
  criticalTemperatureClosed : criticalTemperature
  symmetryBreakingClosed : symmetryBreaking
  phaseTransitionOrderClosed : phaseTransitionOrder

structure LandauTheoryEvidence (L : LandauTheoryPackage) where
  criticalTemperatureClosed : L.criticalTemperature
  symmetryBreakingClosed : L.symmetryBreaking
  phaseTransitionOrderClosed : L.phaseTransitionOrder

def LandauTheoryClosed (L : LandauTheoryPackage) : Prop :=
  L.criticalTemperature ∧ L.symmetryBreaking ∧ L.phaseTransitionOrder

theorem landau_theory_closed_from_evidence (L : LandauTheoryPackage)
    (E : LandauTheoryEvidence L) : LandauTheoryClosed L := by
  exact And.intro E.criticalTemperatureClosed (And.intro E.symmetryBreakingClosed E.phaseTransitionOrderClosed)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse