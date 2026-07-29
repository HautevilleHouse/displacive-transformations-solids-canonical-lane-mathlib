import DisplaciveTransformationsSolidsCanonicalLaneLean.OrderParameterLandau

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsCanonicalLaneLean

structure SoftModeThermodynamicsPackage {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} {L : OrderParameterLandauPackage P} where
  softModeFrequency : ℝ
  modeGruneisenParameter : ℝ
  thermodynamicPotential : Type
  softModeVanishesAtTransition : Prop
  gruneisenParameterBounded : Prop

structure SoftModeThermodynamicsEvidence {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} {L : OrderParameterLandauPackage P}
    (S : SoftModeThermodynamicsPackage L) where
  softModeVanishesAtTransitionClosed : S.softModeVanishesAtTransition
  gruneisenParameterBoundedClosed : S.gruneisenParameterBounded

def SoftModeThermodynamicsClosed {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} {L : OrderParameterLandauPackage P}
    (S : SoftModeThermodynamicsPackage L) : Prop :=
  S.softModeVanishesAtTransition ∧ S.gruneisenParameterBounded

theorem soft_mode_thermodynamics_closed_from_evidence {G : CrystalLatticeGeometry}
    {P : PhononDispersionPackage G} {L : OrderParameterLandauPackage P}
    (S : SoftModeThermodynamicsPackage L) (E : SoftModeThermodynamicsEvidence S) :
    SoftModeThermodynamicsClosed S := by
  exact And.intro E.softModeVanishesAtTransitionClosed E.gruneisenParameterBoundedClosed

end DisplaciveTransformationsSolidsCanonicalLaneLean
end HautevilleHouse