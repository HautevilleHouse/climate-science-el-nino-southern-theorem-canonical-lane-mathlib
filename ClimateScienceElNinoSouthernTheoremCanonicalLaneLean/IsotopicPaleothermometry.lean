import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  iceCoreSample : ℕ → ℝ
  isotopeRatio : ℕ → ℝ
  temperatureReconstruction : ℕ → ℝ
  calibrationCurve : ℝ → ℝ
  knownForcing : Prop
  reconstructionValid : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  forcingClosed : I.knownForcing
  reconstructionClosed : I.reconstructionValid

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.knownForcing ∧ I.reconstructionValid

theorem isotopic_closed_from_evidence (I : IsotopicPaleothermometryPackage)
    (Ev : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.forcingClosed Ev.reconstructionClosed

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse
