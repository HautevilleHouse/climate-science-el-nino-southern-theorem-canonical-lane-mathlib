import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure ClimateAdmissibleObject where
  pacificBasin : Type
  seaSurfaceTemp : pacificBasin → ℝ
  windStress : pacificBasin → ℝ
  oceanDynamics : Prop
  coupledFeedback : Prop
  conclusion : oceanDynamics ∧ coupledFeedback

structure AdmissibleClass where
  object : ClimateAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.oceanDynamics ∧ A.object.coupledFeedback) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse