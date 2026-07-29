import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure BjerknesFeedbackPackage where
  positiveOceanAtmosphereCoupling : Prop
  thermoclineFeedback : Prop
  zonalWindStressResponse : Prop
  elNinoGrowthPhase : Prop

structure BjerknesFeedbackEvidence (B : BjerknesFeedbackPackage) where
  positiveOceanAtmosphereCouplingClosed : B.positiveOceanAtmosphereCoupling
  thermoclineFeedbackClosed : B.thermoclineFeedback
  zonalWindStressResponseClosed : B.zonalWindStressResponse
  elNinoGrowthPhaseClosed : B.elNinoGrowthPhase

def BjerknesFeedbackClosed (B : BjerknesFeedbackPackage) : Prop :=
  B.positiveOceanAtmosphereCoupling ∧ B.thermoclineFeedback ∧
  B.zonalWindStressResponse ∧ B.elNinoGrowthPhase

theorem bjerknes_feedback_closed_from_evidence (B : BjerknesFeedbackPackage)
    (E : BjerknesFeedbackEvidence B) : BjerknesFeedbackClosed B := by
  exact And.intro E.positiveOceanAtmosphereCouplingClosed
    (And.intro E.thermoclineFeedbackClosed
      (And.intro E.zonalWindStressResponseClosed
        E.elNinoGrowthPhaseClosed))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse