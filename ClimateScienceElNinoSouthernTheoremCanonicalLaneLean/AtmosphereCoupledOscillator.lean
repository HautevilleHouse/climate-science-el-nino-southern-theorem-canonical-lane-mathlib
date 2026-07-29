import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure AtmosphereCoupledOscillatorPackage where
  seaLevelPressureGradient : Prop
  convectionAnomaly : Prop
  westerlyWindBurst : Prop
  maddenJulianOscillationCoupling : Prop

structure AtmosphereCoupledOscillatorEvidence (A : AtmosphereCoupledOscillatorPackage) where
  seaLevelPressureGradientClosed : A.seaLevelPressureGradient
  convectionAnomalyClosed : A.convectionAnomaly
  westerlyWindBurstClosed : A.westerlyWindBurst
  maddenJulianOscillationCouplingClosed : A.maddenJulianOscillationCoupling

def AtmosphereCoupledOscillatorClosed (A : AtmosphereCoupledOscillatorPackage) : Prop :=
  A.seaLevelPressureGradient ∧ A.convectionAnomaly ∧
  A.westerlyWindBurst ∧ A.maddenJulianOscillationCoupling

theorem atmosphere_coupled_oscillator_closed_from_evidence
    (A : AtmosphereCoupledOscillatorPackage)
    (E : AtmosphereCoupledOscillatorEvidence A) : AtmosphereCoupledOscillatorClosed A := by
  exact And.intro E.seaLevelPressureGradientClosed
    (And.intro E.convectionAnomalyClosed
      (And.intro E.westerlyWindBurstClosed
        E.maddenJulianOscillationCouplingClosed))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse