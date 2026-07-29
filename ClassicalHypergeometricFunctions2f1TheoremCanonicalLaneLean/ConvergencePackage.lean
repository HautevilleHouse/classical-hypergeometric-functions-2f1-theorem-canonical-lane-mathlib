import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure ConvergencePackage (H : Hypergeometric2F1Object) where
  radius : ℝ
  domain : ℂ → Prop
  absoluteConvergence : Prop
  uniformConvergenceCompact : Prop
  analyticContinuationExtended : Prop

structure ConvergenceEvidence (H : Hypergeometric2F1Object) (C : ConvergencePackage H) where
  radiusClosed : C.radius > 0
  domainClosed : C.domain H.series.z
  absoluteConvergenceClosed : C.absoluteConvergence
  uniformConvergenceCompactClosed : C.uniformConvergenceCompact
  analyticContinuationExtendedClosed : C.analyticContinuationExtended

def ConvergenceClosed (H : Hypergeometric2F1Object) (C : ConvergencePackage H) : Prop :=
  C.radius > 0 ∧ C.domain H.series.z ∧ C.absoluteConvergence ∧ C.uniformConvergenceCompact ∧ C.analyticContinuationExtended

theorem convergence_closed_from_evidence (H : Hypergeometric2F1Object) (C : ConvergencePackage H) (E : ConvergenceEvidence H C) : ConvergenceClosed H C := by
  exact And.intro E.radiusClosed (And.intro E.domainClosed (And.intro E.absoluteConvergenceClosed (And.intro E.uniformConvergenceCompactClosed E.analyticContinuationExtendedClosed)))

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse