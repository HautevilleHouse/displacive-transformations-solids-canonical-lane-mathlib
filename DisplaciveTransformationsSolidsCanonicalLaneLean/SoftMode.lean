import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure SoftModePackage where
  modeFrequency : Type u
  modeCoordinate : Type v
  temperatureDependence : modeFrequency → modeCoordinate → Prop
  softModeCondition : Prop
  zoneCenterMode : Prop
  softModeConditionClosed : softModeCondition
  zoneCenterModeClosed : zoneCenterMode

structure SoftModeEvidence (S : SoftModePackage) where
  softModeConditionClosed : S.softModeCondition
  zoneCenterModeClosed : S.zoneCenterMode

def SoftModeClosed (S : SoftModePackage) : Prop :=
  S.softModeCondition ∧ S.zoneCenterMode

theorem soft_mode_closed_from_evidence (S : SoftModePackage)
    (E : SoftModeEvidence S) : SoftModeClosed S := by
  exact And.intro E.softModeConditionClosed E.zoneCenterModeClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse