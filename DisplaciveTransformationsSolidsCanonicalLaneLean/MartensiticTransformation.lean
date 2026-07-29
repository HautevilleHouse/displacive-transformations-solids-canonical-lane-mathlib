import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure MartensiticTransformationPackage
    (G : DeformationGradientPackage) where
  parentPhaseCrystal : CrystalLattice
  productPhaseCrystal : CrystalLattice
  orientationRelation : Prop
  habitPlane : Prop
  shapeStrain : Prop
  transformationTwinning : Prop

structure MartensiticTransformationEvidence
    {G : DeformationGradientPackage}
    (M : MartensiticTransformationPackage G) where
  orientationRelationClosed : M.orientationRelation
  habitPlaneClosed : M.habitPlane
  shapeStrainClosed : M.shapeStrain
  transformationTwinningClosed : M.transformationTwinning

def MartensiticTransformationClosed
    {G : DeformationGradientPackage}
    (M : MartensiticTransformationPackage G) : Prop :=
  M.orientationRelation ∧ M.habitPlane ∧ M.shapeStrain ∧ M.transformationTwinning

theorem martensitic_transformation_closed_from_evidence
    {G : DeformationGradientPackage}
    (M : MartensiticTransformationPackage G)
    (E : MartensiticTransformationEvidence M) :
    MartensiticTransformationClosed M := by
  exact And.intro E.orientationRelationClosed
    (And.intro E.habitPlaneClosed
      (And.intro E.shapeStrainClosed E.transformationTwinningClosed))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
