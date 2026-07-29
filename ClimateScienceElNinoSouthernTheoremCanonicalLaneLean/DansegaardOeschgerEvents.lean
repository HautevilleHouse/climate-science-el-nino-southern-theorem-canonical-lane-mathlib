import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingEvent : Prop
  coolPeriodFollowing : Prop
  iceCoreOxygenIsotopeRecord : Prop
  atlanticMeridionalOverturningCirculation : Prop
  millennialScaleOscillation : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptWarmingEventClosed : D.abruptWarmingEvent
  coolPeriodFollowingClosed : D.coolPeriodFollowing
  iceCoreOxygenIsotopeRecordClosed : D.iceCoreOxygenIsotopeRecord
  atlanticMeridionalOverturningCirculationClosed : D.atlanticMeridionalOverturningCirculation
  millennialScaleOscillationClosed : D.millennialScaleOscillation

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptWarmingEvent ∧ D.coolPeriodFollowing ∧ D.iceCoreOxygenIsotopeRecord ∧
  D.atlanticMeridionalOverturningCirculation ∧ D.millennialScaleOscillation

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage) (Ev : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.abruptWarmingEventClosed
    (And.intro Ev.coolPeriodFollowingClosed
      (And.intro Ev.iceCoreOxygenIsotopeRecordClosed
        (And.intro Ev.atlanticMeridionalOverturningCirculationClosed Ev.millennialScaleOscillationClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse