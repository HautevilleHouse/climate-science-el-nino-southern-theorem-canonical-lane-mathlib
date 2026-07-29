import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceElNinoSouthernTheoremCanonicalLaneLean.ElNinoSouthernOscillation

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure OceanAtmosphereCouplingPackage {E : ENSOPackage} where
  windStressForcing : Prop
  thermoclineFeedback : Prop
  bjerknessFeedback : Prop
  delayedOscillator : Prop
  rechargeDischarge : Prop

structure OceanAtmosphereCouplingEvidence {E : ENSOPackage}
    (C : OceanAtmosphereCouplingPackage E) where
  windStressForcingClosed : C.windStressForcing
  thermoclineFeedbackClosed : C.thermoclineFeedback
  bjerknessFeedbackClosed : C.bjerknessFeedback
  delayedOscillatorClosed : C.delayedOscillator
  rechargeDischargeClosed : C.rechargeDischarge

def OceanAtmosphereCouplingClosed {E : ENSOPackage}
    (C : OceanAtmosphereCouplingPackage E) : Prop :=
  C.windStressForcing ∧ C.thermoclineFeedback ∧ C.bjerknessFeedback ∧
  C.delayedOscillator ∧ C.rechargeDischarge

theorem ocean_atmosphere_coupling_closed_from_evidence
    {E : ENSOPackage} (C : OceanAtmosphereCouplingPackage E)
    (Ev : OceanAtmosphereCouplingEvidence C) : OceanAtmosphereCouplingClosed C := by
  exact And.intro Ev.windStressForcingClosed
    (And.intro Ev.thermoclineFeedbackClosed
      (And.intro Ev.bjerknessFeedbackClosed
        (And.intro Ev.delayedOscillatorClosed Ev.rechargeDischargeClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse