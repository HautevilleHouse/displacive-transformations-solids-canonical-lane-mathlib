import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure TransformationThermodynamicsPackage where
  chemicalDrivingForce : Prop
  elasticStrainEnergy : Prop
  interfacialEnergy : Prop
  nucleationBarrier : Prop
  martensiteStartTemperature : Prop
  athermalTransformation : Prop
  chemicalDrivingForceClosed : chemicalDrivingForce
  elasticStrainEnergyClosed : elasticStrainEnergy
  interfacialEnergyClosed : interfacialEnergy
  nucleationBarrierClosed : nucleationBarrier
  martensiteStartTemperatureClosed : martensiteStartTemperature
  athermalTransformationClosed : athermalTransformation

structure TransformationThermodynamicsEvidence
    (T : TransformationThermodynamicsPackage) where
  chemicalDrivingForceEvidence : T.chemicalDrivingForce
  elasticStrainEnergyEvidence : T.elasticStrainEnergy
  interfacialEnergyEvidence : T.interfacialEnergy
  nucleationBarrierEvidence : T.nucleationBarrier
  martensiteStartTemperatureEvidence : T.martensiteStartTemperature
  athermalTransformationEvidence : T.athermalTransformation

def TransformationThermodynamicsClosed
    (T : TransformationThermodynamicsPackage) : Prop :=
  T.chemicalDrivingForce ∧ T.elasticStrainEnergy ∧ T.interfacialEnergy ∧
  T.nucleationBarrier ∧ T.martensiteStartTemperature ∧ T.athermalTransformation

theorem transformation_thermodynamics_closed_from_evidence
    (T : TransformationThermodynamicsPackage)
    (E : TransformationThermodynamicsEvidence T) :
    TransformationThermodynamicsClosed T := by
  exact And.intro E.chemicalDrivingForceEvidence
    (And.intro E.elasticStrainEnergyEvidence
      (And.intro E.interfacialEnergyEvidence
        (And.intro E.nucleationBarrierEvidence
          (And.intro E.martensiteStartTemperatureEvidence
            E.athermalTransformationEvidence))))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse