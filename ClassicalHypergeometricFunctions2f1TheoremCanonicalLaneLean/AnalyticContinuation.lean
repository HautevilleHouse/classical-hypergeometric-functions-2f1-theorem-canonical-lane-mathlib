import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure AnalyticContinuation where
  originalFunction : ℂ → ℂ
  continuationDomain : Set ℂ
  continuationFunction : ℂ → ℂ
  continuationProperty : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuation) where
  continuationDomainOpen : IsOpen A.continuationDomain
  continuationPropertyClosed : A.continuationProperty

def AnalyticContinuationClosed (A : AnalyticContinuation) : Prop :=
  IsOpen A.continuationDomain ∧ A.continuationProperty

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuation) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.continuationDomainOpen E.continuationPropertyClosed

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse