import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HypergeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse