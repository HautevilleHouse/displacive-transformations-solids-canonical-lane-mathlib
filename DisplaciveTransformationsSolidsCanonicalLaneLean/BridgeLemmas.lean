import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DisplaciveTransformationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse
