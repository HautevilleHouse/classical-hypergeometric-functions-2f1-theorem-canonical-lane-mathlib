import ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse