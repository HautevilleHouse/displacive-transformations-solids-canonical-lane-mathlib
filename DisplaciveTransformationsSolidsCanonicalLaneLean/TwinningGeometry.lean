import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure TwinningGeometryPackage where
  twinVariant : Type u
  twinPlane : Prop
  shearDirection : Prop
  shearMagnitude : Prop
  compatibilityCondition : Prop
  twinVariantClosed : twinVariant
  twinPlaneClosed : twinPlane
  shearDirectionClosed : shearDirection
  shearMagnitudeClosed : shearMagnitude
  compatibilityConditionClosed : compatibilityCondition

structure TwinningGeometryEvidence
    (T : TwinningGeometryPackage) where
  twinVariantEvidence : T.twinVariant
  twinPlaneEvidence : T.twinPlane
  shearDirectionEvidence : T.shearDirection
  shearMagnitudeEvidence : T.shearMagnitude
  compatibilityConditionEvidence : T.compatibilityCondition

def TwinningGeometryClosed (T : TwinningGeometryPackage) : Prop :=
  T.twinVariant ∧ T.twinPlane ∧ T.shearDirection ∧
  T.shearMagnitude ∧ T.compatibilityCondition

theorem twinning_geometry_closed_from_evidence
    (T : TwinningGeometryPackage)
    (E : TwinningGeometryEvidence T) :
    TwinningGeometryClosed T := by
  exact And.intro E.twinVariantEvidence
    (And.intro E.twinPlaneEvidence
      (And.intro E.shearDirectionEvidence
        (And.intro E.shearMagnitudeEvidence
          E.compatibilityConditionEvidence)))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse