import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure StrainAccomodationMechanism (transformedDomain : Type u) where
  latticeCorrespondence : Type v
  habitPlane : Prop
  shapeStrain : Prop
  elasticEnergy : Prop

structure StrainAccomodationEvidence (S : StrainAccomodationMechanism transformedDomain) where
  latticeCorrespondenceClosed : S.latticeCorrespondence
  habitPlaneClosed : S.habitPlane
  shapeStrainClosed : S.shapeStrain
  elasticEnergyClosed : S.elasticEnergy

def StrainAccomodationClosed (S : StrainAccomodationMechanism transformedDomain) : Prop :=
  S.latticeCorrespondence ∧ S.habitPlane ∧ S.shapeStrain ∧ S.elasticEnergy

theorem strain_accomodation_closed_from_evidence
    (S : StrainAccomodationMechanism transformedDomain) (E : StrainAccomodationEvidence S) :
    StrainAccomodationClosed S := by
  exact And.intro E.latticeCorrespondenceClosed
    (And.intro E.habitPlaneClosed
      (And.intro E.shapeStrainClosed E.elasticEnergyClosed))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse