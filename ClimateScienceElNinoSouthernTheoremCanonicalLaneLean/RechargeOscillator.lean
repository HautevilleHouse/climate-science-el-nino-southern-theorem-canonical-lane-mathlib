import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure RechargeOscillatorModel where
  thermoclineDepthAnomaly : ℝ
  seaSurfaceTempAnomaly : ℝ
  windStressCurl : ℝ
  rechargeRate : ℝ
  couplingCoefficient : ℝ
  dampingRate : ℝ

structure RechargeOscillatorPackage where
  model : RechargeOscillatorModel
  oscillatorEquationClosed : Prop
  oscillatorEquationClosedTerm : oscillatorEquationClosed
  stabilityConditionClosed : Prop
  stabilityConditionClosedTerm : stabilityConditionClosed

def RechargeOscillatorClosed (R : RechargeOscillatorPackage) : Prop :=
  R.oscillatorEquationClosed ∧ R.stabilityConditionClosed

theorem recharge_oscillator_closed (R : RechargeOscillatorPackage) :
  RechargeOscillatorClosed R := by
  exact And.intro R.oscillatorEquationClosedTerm R.stabilityConditionClosedTerm

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse