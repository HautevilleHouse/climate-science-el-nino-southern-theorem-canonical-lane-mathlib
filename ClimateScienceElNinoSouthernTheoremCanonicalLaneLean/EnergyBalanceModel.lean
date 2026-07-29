import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  equilibriumTemperature : ℝ
  feedbackParameter : ℝ
  radiativeForcing : ℝ → ℝ
  solutionConverges : Prop

structure EnergyBalanceModelEvidence (M : EnergyBalanceModelPackage) where
  convergenceClosed : M.solutionConverges

def EnergyBalanceModelClosed (M : EnergyBalanceModelPackage) : Prop :=
  M.solutionConverges

theorem energy_balance_closed_from_evidence (M : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence M) : EnergyBalanceModelClosed M := by
  exact Ev.convergenceClosed

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse
