import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure ElNinoSouthernOscillationPackage where
  nino34Index : ℕ → ℝ
  warmPhaseThreshold : ℝ
  coldPhaseThreshold : ℝ
  oscillationPeriodYears : ℝ
  onsetYear : ℕ
  oceanAtmosphereCoupling : Prop
  dataQualityAssured : Prop

structure ElNinoSouthernOscillationEvidence (E : ElNinoSouthernOscillationPackage) where
  couplingClosed : E.oceanAtmosphereCoupling
  qualityClosed : E.dataQualityAssured

def ElNinoSouthernOscillationClosed (E : ElNinoSouthernOscillationPackage) : Prop :=
  E.oceanAtmosphereCoupling ∧ E.dataQualityAssured

theorem el_nino_closed_from_evidence (E : ElNinoSouthernOscillationPackage)
    (Ev : ElNinoSouthernOscillationEvidence E) : ElNinoSouthernOscillationClosed E := by
  exact And.intro Ev.couplingClosed Ev.qualityClosed

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse
