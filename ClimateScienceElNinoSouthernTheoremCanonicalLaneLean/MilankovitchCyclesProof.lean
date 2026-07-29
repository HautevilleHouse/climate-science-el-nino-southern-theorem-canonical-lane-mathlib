import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalForcing : Prop
  precessionIndex : Prop
  obliquityVariation : Prop
  eccentricityCycle : Prop
  insolationAnomaly : Prop
  glacialInterglacialCycle : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalForcingClosed : M.orbitalForcing
  precessionIndexClosed : M.precessionIndex
  obliquityVariationClosed : M.obliquityVariation
  eccentricityCycleClosed : M.eccentricityCycle
  insolationAnomalyClosed : M.insolationAnomaly
  glacialInterglacialCycleClosed : M.glacialInterglacialCycle

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalForcing ∧ M.precessionIndex ∧ M.obliquityVariation ∧ M.eccentricityCycle ∧ M.insolationAnomaly ∧ M.glacialInterglacialCycle

theorem milankovitch_cycles_closed_from_evidence
    (M : MilankovitchCyclesPackage) (Ev : MilankovitchCyclesEvidence M) :
    MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalForcingClosed
    (And.intro Ev.precessionIndexClosed
      (And.intro Ev.obliquityVariationClosed
        (And.intro Ev.eccentricityCycleClosed
          (And.intro Ev.insolationAnomalyClosed Ev.glacialInterglacialCycleClosed))))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse