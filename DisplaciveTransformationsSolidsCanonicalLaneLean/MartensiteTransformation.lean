import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure MartensiteTransformationPackage where
  parentPhase : Type u
  productPhase : parentPhase → Type v
  habitPlane : Type w
  orientationRelation : Prop
  latticeCorrespondence : Prop
  shapeStrain : Prop
  orientationRelationClosed : orientationRelation
  latticeCorrespondenceClosed : latticeCorrespondence
  shapeStrainClosed : shapeStrain

structure MartensiteTransformationEvidence (M : MartensiteTransformationPackage) where
  orientationRelationClosed : M.orientationRelation
  latticeCorrespondenceClosed : M.latticeCorrespondence
  shapeStrainClosed : M.shapeStrain

def MartensiteTransformationClosed (M : MartensiteTransformationPackage) : Prop :=
  M.orientationRelation ∧ M.latticeCorrespondence ∧ M.shapeStrain

theorem martensite_transformation_closed_from_evidence
    (M : MartensiteTransformationPackage)
    (E : MartensiteTransformationEvidence M) : MartensiteTransformationClosed M := by
  exact And.intro E.orientationRelationClosed (And.intro E.latticeCorrespondenceClosed E.shapeStrainClosed)

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse