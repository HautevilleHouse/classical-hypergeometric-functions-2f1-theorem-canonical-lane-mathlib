import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricAdmittedObject where
  hypergeometricSeries : Type
  convergenceRegion : Prop
  analyticContinuation : Prop
  functionalEquation : Prop
  conclusion : functionalEquation

structure HypergeometricEndgameState where
  object : HypergeometricAdmittedObject

def HypergeometricWitnessClosed (O : HypergeometricAdmittedObject) : Prop :=
  O.functionalEquation

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse