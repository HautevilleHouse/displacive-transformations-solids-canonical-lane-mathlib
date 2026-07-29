import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure LandauFreeEnergyPackage
    {G : DeformationGradientPackage}
    (M : MartensiticTransformationPackage G) where
  orderParameter : Type
  freeEnergyFunctional : Type
  equilibriumCondition : Prop
  phaseTransitionTemperature : Prop
  softMode : Prop

structure LandauFreeEnergyEvidence
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    (L : LandauFreeEnergyPackage M) where
  equilibriumConditionClosed : L.equilibriumCondition
  phaseTransitionTemperatureClosed : L.phaseTransitionTemperature
  softModeClosed : L.softMode

def LandauFreeEnergyClosed
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    (L : LandauFreeEnergyPackage M) : Prop :=
  L.equilibriumCondition ∧ L.phaseTransitionTemperature ∧ L.softMode

theorem landau_free_energy_closed_from_evidence
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    (L : LandauFreeEnergyPackage M)
    (E : LandauFreeEnergyEvidence L) :
    LandauFreeEnergyClosed L := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.phaseTransitionTemperatureClosed E.softModeClosed)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
