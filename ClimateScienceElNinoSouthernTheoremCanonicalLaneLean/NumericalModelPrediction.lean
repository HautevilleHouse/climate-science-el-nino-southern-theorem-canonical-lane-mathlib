import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure NumericalModelPredictionPackage where
  coupledGeneralCirculationModel : Prop
  ensembleForecastSystem : Prop
  dataAssimilation : Prop
  forecastSkillMetrics : Prop
  decadalPrediction : Prop

structure NumericalModelPredictionEvidence (N : NumericalModelPredictionPackage) where
  coupledGeneralCirculationModelClosed : N.coupledGeneralCirculationModel
  ensembleForecastSystemClosed : N.ensembleForecastSystem
  dataAssimilationClosed : N.dataAssimilation
  forecastSkillMetricsClosed : N.forecastSkillMetrics
  decadalPredictionClosed : N.decadalPrediction

def NumericalModelPredictionClosed (N : NumericalModelPredictionPackage) : Prop :=
  N.coupledGeneralCirculationModel ∧ N.ensembleForecastSystem ∧
  N.dataAssimilation ∧ N.forecastSkillMetrics ∧ N.decadalPrediction

theorem numerical_model_prediction_closed_from_evidence
    (N : NumericalModelPredictionPackage) (Ev : NumericalModelPredictionEvidence N) :
    NumericalModelPredictionClosed N := by
  exact And.intro Ev.coupledGeneralCirculationModelClosed
    (And.intro Ev.ensembleForecastSystemClosed
      (And.intro Ev.dataAssimilationClosed
        (And.intro Ev.forecastSkillMetricsClosed Ev.decadalPredictionClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse