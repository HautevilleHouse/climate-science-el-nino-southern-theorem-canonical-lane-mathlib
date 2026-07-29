import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceElNinoSouthernTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.oceanDynamics ∧ A.object.coupledFeedback

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceElNinoSouthernTheoremCanonicalLaneLean
end HautevilleHouse