import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalEccentricity : Prop
  axialPrecession : Prop
  obliquityVariation : Prop
  insolationAnomaly : Prop
  glacialInterglacialTransition : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalEccentricityClosed : M.orbitalEccentricity
  axialPrecessionClosed : M.axialPrecession
  obliquityVariationClosed : M.obliquityVariation
  insolationAnomalyClosed : M.insolationAnomaly
  glacialInterglacialTransitionClosed : M.glacialInterglacialTransition

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalEccentricity ∧ M.axialPrecession ∧ M.obliquityVariation ∧
  M.insolationAnomaly ∧ M.glacialInterglacialTransition

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (Ev : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalEccentricityClosed
    (And.intro Ev.axialPrecessionClosed
      (And.intro Ev.obliquityVariationClosed
        (And.intro Ev.insolationAnomalyClosed Ev.glacialInterglacialTransitionClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse