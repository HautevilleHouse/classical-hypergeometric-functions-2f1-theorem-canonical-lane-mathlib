import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricSeries where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  terms : ℕ → ℂ
  sum : ℂ
  convergence : Prop
  convergenceTerm : convergence

structure Hypergeometric2F1Object where
  series : HypergeometricSeries
  analyticContinuation : Prop
  branchCut : ℂ → Prop
  monodromyData : Prop

structure AdmittedClass where
  object : Hypergeometric2F1Object
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmittedClass) : Prop :=
  HypergeometricClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse