import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  earthClimateSystem : Prop
  measuredObservations : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  observedDataMatchesModel : Prop
  conclusion : observedDataMatchesModel

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.observedDataMatchesModel

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse