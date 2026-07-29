import DisplaciveTransformationsSolidsCanonicalLaneLean.PhononDispersion

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure OrderParameterLandauPackage {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} where
  orderParameter : Type
  freeEnergyExpansion : ℝ → ℝ
  criticalTemperature : ℝ
  symmetryBreakingTerm : Prop
  stabilityAnalysis : Prop

structure OrderParameterLandauEvidence {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} (L : OrderParameterLandauPackage P) where
  symmetryBreakingTermClosed : L.symmetryBreakingTerm
  stabilityAnalysisClosed : L.stabilityAnalysis

def OrderParameterLandauClosed {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} (L : OrderParameterLandauPackage P) : Prop :=
  L.symmetryBreakingTerm ∧ L.stabilityAnalysis

theorem order_parameter_landau_closed_from_evidence {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} (L : OrderParameterLandauPackage P) (E : OrderParameterLandauEvidence L) :
    OrderParameterLandauClosed L := by
  exact And.intro E.symmetryBreakingTermClosed E.stabilityAnalysisClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse