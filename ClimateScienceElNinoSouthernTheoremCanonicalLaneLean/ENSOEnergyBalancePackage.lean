import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure ENSOEnergyBalancePackage where
  radiationBudget : Prop
  oceanHeatContent : Prop
  coupledOscillator : Prop
  delayedAction : Prop
  recurrenceSeaLvl : Prop

structure ENSOEnergyBalanceEvidence (E : ENSOEnergyBalancePackage) where
  radiationBudgetClosed : E.radiationBudget
  oceanHeatContentClosed : E.oceanHeatContent
  coupledOscillatorClosed : E.coupledOscillator
  delayedActionClosed : E.delayedAction
  recurrenceSeaLvlClosed : E.recurrenceSeaLvl

def ENSOEnergyBalanceClosed (E : ENSOEnergyBalancePackage) : Prop :=
  E.radiationBudget ∧ E.oceanHeatContent ∧ E.coupledOscillator ∧ E.delayedAction ∧ E.recurrenceSeaLvl

theorem enso_energy_balance_closed_from_evidence
    (E : ENSOEnergyBalancePackage) (Ev : ENSOEnergyBalanceEvidence E) :
    ENSOEnergyBalanceClosed E := by
  exact And.intro Ev.radiationBudgetClosed
    (And.intro Ev.oceanHeatContentClosed
      (And.intro Ev.coupledOscillatorClosed
        (And.intro Ev.delayedActionClosed Ev.recurrenceSeaLvlClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse