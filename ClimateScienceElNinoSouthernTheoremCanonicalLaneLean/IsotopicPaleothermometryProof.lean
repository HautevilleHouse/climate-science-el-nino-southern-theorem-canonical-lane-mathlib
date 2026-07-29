import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  deltaO18Record : Prop
  temperatureCalibration : Prop
  coreDepthChronology : Prop
  reconstructionContinuous : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  deltaO18RecordClosed : I.deltaO18Record
  temperatureCalibrationClosed : I.temperatureCalibration
  coreDepthChronologyClosed : I.coreDepthChronology
  reconstructionContinuousClosed : I.reconstructionContinuous

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.deltaO18Record ∧ I.temperatureCalibration ∧ I.coreDepthChronology ∧ I.reconstructionContinuous

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.deltaO18RecordClosed
    (And.intro Ev.temperatureCalibrationClosed
      (And.intro Ev.coreDepthChronologyClosed Ev.reconstructionContinuousClosed))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse