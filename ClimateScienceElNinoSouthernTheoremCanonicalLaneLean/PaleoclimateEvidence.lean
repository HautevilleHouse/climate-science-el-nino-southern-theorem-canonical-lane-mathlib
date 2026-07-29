import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure PaleoclimateEvidencePackage where
  coralProxies : Prop
  iceCoreRecords : Prop
  sedimentCoreData : Prop
  historicalENSOReconstruction : Prop
  holoceneVariability : Prop

structure PaleoclimateEvidenceEvidence (P : PaleoclimateEvidencePackage) where
  coralProxiesClosed : P.coralProxies
  iceCoreRecordsClosed : P.iceCoreRecords
  sedimentCoreDataClosed : P.sedimentCoreData
  historicalENSOReconstructionClosed : P.historicalENSOReconstruction
  holoceneVariabilityClosed : P.holoceneVariability

def PaleoclimateEvidenceClosed (P : PaleoclimateEvidencePackage) : Prop :=
  P.coralProxies ∧ P.iceCoreRecords ∧ P.sedimentCoreData ∧
  P.historicalENSOReconstruction ∧ P.holoceneVariability

theorem paleoclimate_evidence_closed_from_evidence
    (P : PaleoclimateEvidencePackage) (Ev : PaleoclimateEvidenceEvidence P) :
    PaleoclimateEvidenceClosed P := by
  exact And.intro Ev.coralProxiesClosed
    (And.intro Ev.iceCoreRecordsClosed
      (And.intro Ev.sedimentCoreDataClosed
        (And.intro Ev.historicalENSOReconstructionClosed Ev.holoceneVariabilityClosed)))

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse