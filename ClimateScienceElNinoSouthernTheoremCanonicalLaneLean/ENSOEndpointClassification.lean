import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

structure ENSOEndpointClassificationPackage where
  targetClimateModel : Type u
  targetTopology : TopologicalSpace targetClimateModel
  coupledOceanAtmosphereSystem : Prop
  elNinoSouthernEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetClimateModel 3
  endpointMatchesENSOStatement : Prop

structure ENSOEndpointClassificationEvidence (E : ENSOEndpointClassificationPackage) where
  coupledOceanAtmosphereSystemClosed : E.coupledOceanAtmosphereSystem
  endpointMatchesENSOStatementClosed : E.endpointMatchesENSOStatement

def ENSOEndpointClassificationClosed (E : ENSOEndpointClassificationPackage) : Prop :=
  E.coupledOceanAtmosphereSystem ∧ E.endpointMatchesENSOStatement

theorem enso_endpoint_classification_closed_from_evidence
    (E : ENSOEndpointClassificationPackage) (Ev : ENSOEndpointClassificationEvidence E) :
    ENSOEndpointClassificationClosed E := by
  exact And.intro Ev.coupledOceanAtmosphereSystemClosed Ev.endpointMatchesENSOStatementClosed

theorem enso_endpoint_classification_supplies_mathlib_statement
    (E : ENSOEndpointClassificationPackage) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      E.targetClimateModel E.targetTopology 3 :=
  E.elNinoSouthernEndpoint

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse