import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure DomainEvolutionPackage
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    (L : LandauFreeEnergyPackage M) where
  domainNucleation : Prop
  interfaceMigration : Prop
  elasticInteraction : Prop
  thermalActivation : Prop
  microstructuralEvolution : Prop

structure DomainEvolutionEvidence
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    {L : LandauFreeEnergyPackage M}
    (D : DomainEvolutionPackage L) where
  domainNucleationClosed : D.domainNucleation
  interfaceMigrationClosed : D.interfaceMigration
  elasticInteractionClosed : D.elasticInteraction
  thermalActivationClosed : D.thermalActivation
  microstructuralEvolutionClosed : D.microstructuralEvolution

def DomainEvolutionClosed
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    {L : LandauFreeEnergyPackage M}
    (D : DomainEvolutionPackage L) : Prop :=
  D.domainNucleation ∧ D.interfaceMigration ∧ D.elasticInteraction ∧
  D.thermalActivation ∧ D.microstructuralEvolution

theorem domain_evolution_closed_from_evidence
    {G : DeformationGradientPackage}
    {M : MartensiticTransformationPackage G}
    {L : LandauFreeEnergyPackage M}
    (D : DomainEvolutionPackage L)
    (E : DomainEvolutionEvidence D) :
    DomainEvolutionClosed D := by
  exact And.intro E.domainNucleationClosed
    (And.intro E.interfaceMigrationClosed
      (And.intro E.elasticInteractionClosed
        (And.intro E.thermalActivationClosed E.microstructuralEvolutionClosed)))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
