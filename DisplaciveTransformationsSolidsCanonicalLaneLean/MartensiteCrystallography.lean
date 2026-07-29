import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure MartensiteCrystallographyPackage where
  parentPhase : Type u
  productPhase : Type v
  latticeCorrespondence : Prop
  habitPlane : Prop
  orientationRelationship : Prop
  shapeStrain : Prop
  latticeInvariantShear : Prop
  phenomenologicalTheoryValid : Prop
  latticeCorrespondenceClosed : latticeCorrespondence
  habitPlaneClosed : habitPlane
  orientationRelationshipClosed : orientationRelationship
  shapeStrainClosed : shapeStrain
  latticeInvariantShearClosed : latticeInvariantShear
  phenomenologicalTheoryValidClosed : phenomenologicalTheoryValid

structure MartensiteCrystallographyEvidence
    (M : MartensiteCrystallographyPackage) where
  latticeCorrespondenceEvidence : M.latticeCorrespondence
  habitPlaneEvidence : M.habitPlane
  orientationRelationshipEvidence : M.orientationRelationship
  shapeStrainEvidence : M.shapeStrain
  latticeInvariantShearEvidence : M.latticeInvariantShear
  phenomenologicalTheoryValidEvidence : M.phenomenologicalTheoryValid

def MartensiteCrystallographyClosed (M : MartensiteCrystallographyPackage) : Prop :=
  M.latticeCorrespondence ∧ M.habitPlane ∧ M.orientationRelationship ∧
  M.shapeStrain ∧ M.latticeInvariantShear ∧ M.phenomenologicalTheoryValid

theorem martensite_crystallography_closed_from_evidence
    (M : MartensiteCrystallographyPackage)
    (E : MartensiteCrystallographyEvidence M) :
    MartensiteCrystallographyClosed M := by
  exact And.intro E.latticeCorrespondenceEvidence
    (And.intro E.habitPlaneEvidence
      (And.intro E.orientationRelationshipEvidence
        (And.intro E.shapeStrainEvidence
          (And.intro E.latticeInvariantShearEvidence
            E.phenomenologicalTheoryValidEvidence))))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse