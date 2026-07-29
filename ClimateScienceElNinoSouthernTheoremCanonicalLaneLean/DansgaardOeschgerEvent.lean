import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  eventCount : ℕ
  temperatureJump : ℕ → ℝ
  durationYears : ℕ → ℕ
  occurrenceRate : ℕ → ℝ
  abruptChange : Prop
  mechanismIdentified : Prop

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventPackage) where
  abruptClosed : D.abruptChange
  mechanismClosed : D.mechanismIdentified

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  D.abruptChange ∧ D.mechanismIdentified

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerEventPackage)
    (Ev : DansgaardOeschgerEventEvidence D) : DansgaardOeschgerEventClosed D := by
  exact And.intro Ev.abruptClosed Ev.mechanismClosed

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse
