import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure MilankovitchCyclePackage where
  eccentricity : ℕ → ℝ
  obliquity : ℕ → ℝ
  precession : ℕ → ℝ
  insolationAnomaly : ℕ → ℝ
  cycleCount : ℕ
  orbitalParametersValid : Prop

structure MilankovitchCycleEvidence (M : MilankovitchCyclePackage) where
  orbitalClosed : M.orbitalParametersValid

def MilankovitchCycleClosed (M : MilankovitchCyclePackage) : Prop :=
  M.orbitalParametersValid

theorem milankovitch_closed_from_evidence (M : MilankovitchCyclePackage)
    (Ev : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact Ev.orbitalClosed

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse
