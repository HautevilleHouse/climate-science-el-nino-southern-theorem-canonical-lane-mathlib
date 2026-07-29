import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceElNinoSouthernTheoremCanonicalLaneLean.ElNinoSouthernOscillation

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure TeleconnectionPatternsPackage {E : ENSOPackage} where
  tropicalPacificPrecipitation : Prop
  indonesianThroughflow : Prop
  indianOceanDipole : Prop
  atlanticNino : Prop
  monsoonSystems : Prop
  extratropicalRossbyWaves : Prop

structure TeleconnectionPatternsEvidence {E : ENSOPackage}
    (T : TeleconnectionPatternsPackage E) where
  tropicalPacificPrecipitationClosed : T.tropicalPacificPrecipitation
  indonesianThroughflowClosed : T.indonesianThroughflow
  indianOceanDipoleClosed : T.indianOceanDipole
  atlanticNinoClosed : T.atlanticNino
  monsoonSystemsClosed : T.monsoonSystems
  extratropicalRossbyWavesClosed : T.extratropicalRossbyWaves

def TeleconnectionPatternsClosed {E : ENSOPackage}
    (T : TeleconnectionPatternsPackage E) : Prop :=
  T.tropicalPacificPrecipitation ∧ T.indonesianThroughflow ∧ T.indianOceanDipole ∧
  T.atlanticNino ∧ T.monsoonSystems ∧ T.extratropicalRossbyWaves

theorem teleconnection_patterns_closed_from_evidence
    {E : ENSOPackage} (T : TeleconnectionPatternsPackage E)
    (Ev : TeleconnectionPatternsEvidence T) : TeleconnectionPatternsClosed T := by
  exact And.intro Ev.tropicalPacificPrecipitationClosed
    (And.intro Ev.indonesianThroughflowClosed
      (And.intro Ev.indianOceanDipoleClosed
        (And.intro Ev.atlanticNinoClosed
          (And.intro Ev.monsoonSystemsClosed Ev.extratropicalRossbyWavesClosed))))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse