import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure OceanEnergyBudgetPackage where
  equatorialPacificHeatContent : Prop
  windStressCurlAnomaly : Prop
  thermoclineDepthVariation : Prop
  oceanHeatTransport : Prop

structure OceanEnergyBudgetEvidence (O : OceanEnergyBudgetPackage) where
  equatorialPacificHeatContentClosed : O.equatorialPacificHeatContent
  windStressCurlAnomalyClosed : O.windStressCurlAnomaly
  thermoclineDepthVariationClosed : O.thermoclineDepthVariation
  oceanHeatTransportClosed : O.oceanHeatTransport

def OceanEnergyBudgetClosed (O : OceanEnergyBudgetPackage) : Prop :=
  O.equatorialPacificHeatContent ∧ O.windStressCurlAnomaly ∧
  O.thermoclineDepthVariation ∧ O.oceanHeatTransport

theorem ocean_energy_budget_closed_from_evidence (O : OceanEnergyBudgetPackage)
    (E : OceanEnergyBudgetEvidence O) : OceanEnergyBudgetClosed O := by
  exact And.intro E.equatorialPacificHeatContentClosed
    (And.intro E.windStressCurlAnomalyClosed
      (And.intro E.thermoclineDepthVariationClosed
        E.oceanHeatTransportClosed))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse