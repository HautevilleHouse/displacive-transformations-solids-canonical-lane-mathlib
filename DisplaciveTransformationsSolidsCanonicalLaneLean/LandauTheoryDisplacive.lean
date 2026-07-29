import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure LandauFreeEnergy (orderParameter : Type u) where
  temperature : Type v
  expansionCoefficients : orderParameter → orderParameter → Prop
  minimalFreeEnergy : orderParameter → Prop
  transitionTemperature : Prop

structure LandauFreeEnergyEvidence (L : LandauFreeEnergy orderParameter) where
  expansionClosed : L.expansionCoefficients
  minimalFreeEnergyClosed : L.minimalFreeEnergy
  transitionTemperatureClosed : L.transitionTemperature

def LandauFreeEnergyClosed (L : LandauFreeEnergy orderParameter) : Prop :=
  L.expansionCoefficients ∧ L.minimalFreeEnergy ∧ L.transitionTemperature

theorem landau_free_energy_closed_from_evidence
    (L : LandauFreeEnergy orderParameter) (E : LandauFreeEnergyEvidence L) :
    LandauFreeEnergyClosed L := by
  exact And.intro E.expansionClosed
    (And.intro E.minimalFreeEnergyClosed E.transitionTemperatureClosed)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse