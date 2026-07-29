import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricObject where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radius : ℝ
  analyticContinuation : Prop
  monodromy : Prop
  conclusion : analyticContinuation ∧ monodromy

def HypergeometricWitnessClosed (O : HypergeometricObject) : Prop :=
  O.analyticContinuation ∧ O.monodromy

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse