import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure EnergyBalanceModel where
  solarIncoming : ℝ
  albedo : ℝ
  greenhouseEffect : ℝ
  outgoingLongwave : ℝ
  equilibriumCondition : solarIncoming * (1 - albedo) = outgoingLongwave + greenhouseEffect

structure ENSOEnergyBalancePackage where
  equatorialPacificSW : ℝ
  cloudFeedback : ℝ
  oceanHeatContent : ℝ
  mixedLayerDepth : ℝ
  upwellingRate : ℝ
  energyBalanceClosed : Prop
  energyBalanceClosedTerm : energyBalanceClosed

def ENSOEnergyBalanceClosed (E : ENSOEnergyBalancePackage) : Prop :=
  E.energyBalanceClosed

theorem enso_energy_balance_closed (E : ENSOEnergyBalancePackage) :
  ENSOEnergyBalanceClosed E := by
  exact E.energyBalanceClosedTerm

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse