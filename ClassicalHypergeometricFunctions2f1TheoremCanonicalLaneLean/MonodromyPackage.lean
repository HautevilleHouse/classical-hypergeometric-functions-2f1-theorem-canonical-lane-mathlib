import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

open Classical

structure MonodromyPackage (H : Hypergeometric2F1Object) where
  monodromyRepresentation : ℤ → ℂ → ℂ
  loopSpace : Type
  monodromyGroup : Type
  invariantHermitianForm : Prop
  monodromyUnitarity : Prop

def HypergeometricClosed (H : Hypergeometric2F1Object) : Prop :=
  H.analyticContinuation ∧ H.monodromyData ∧ H.series.convergence

theorem hypergeometric_closed_from_object (H : Hypergeometric2F1Object) : HypergeometricClosed H := by
  exact And.intro H.analyticContinuation (And.intro H.monodromyData H.series.convergence)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse