import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure HysteresisCycle (thermalPath : Type u) where
  forwardTransformationStart : Prop
  reverseTransformationStart : Prop
  transformationLatentHeat : Prop
  cycleClosure : Prop

structure HysteresisCycleEvidence (H : HysteresisCycle thermalPath) where
  forwardTransformationStartClosed : H.forwardTransformationStart
  reverseTransformationStartClosed : H.reverseTransformationStart
  transformationLatentHeatClosed : H.transformationLatentHeat
  cycleClosureClosed : H.cycleClosure

def HysteresisCycleClosed (H : HysteresisCycle thermalPath) : Prop :=
  H.forwardTransformationStart ∧ H.reverseTransformationStart ∧
  H.transformationLatentHeat ∧ H.cycleClosure

theorem hysteresis_cycle_closed_from_evidence
    (H : HysteresisCycle thermalPath) (E : HysteresisCycleEvidence H) :
    HysteresisCycleClosed H := by
  exact And.intro E.forwardTransformationStartClosed
    (And.intro E.reverseTransformationStartClosed
      (And.intro E.transformationLatentHeatClosed E.cycleClosureClosed))

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse