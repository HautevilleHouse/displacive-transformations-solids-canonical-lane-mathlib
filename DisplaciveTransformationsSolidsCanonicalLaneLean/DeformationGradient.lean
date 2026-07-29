import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure DeformationGradientPackage where
  parentPhaseMetric : Type
  productPhaseMetric : Type
  deformationGradientTensor : Type
  finiteStrainTensor : Type
  compatibilityCondition : Prop
  energyDensityFunctional : Prop

structure DeformationGradientEvidence (G : DeformationGradientPackage) where
  compatibilityConditionClosed : G.compatibilityCondition
  energyDensityFunctionalClosed : G.energyDensityFunctional

def DeformationGradientClosed (G : DeformationGradientPackage) : Prop :=
  G.compatibilityCondition ∧ G.energyDensityFunctional

theorem deformation_gradient_closed_from_evidence
    (G : DeformationGradientPackage) (E : DeformationGradientEvidence G) :
    DeformationGradientClosed G := by
  exact And.intro E.compatibilityConditionClosed E.energyDensityFunctionalClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
