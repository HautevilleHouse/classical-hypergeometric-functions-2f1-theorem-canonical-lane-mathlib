import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricSeriesPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radiusOfConvergence : ℂ
  seriesSum : ℂ
  termFormula : ℕ → ℂ
  pochhammerSymbol : ℂ → ℕ → ℂ
  gammaFunctionRelation : Prop
  seriesSumDefined : seriesSum = ∑' (n : ℕ), termFormula n
  analyticContinuationPath : Prop

structure HypergeometricSeriesEvidence (H : HypergeometricSeriesPackage) where
  radiusOfConvergenceClosed : H.radiusOfConvergence = 1
  gammaFunctionRelationClosed : H.gammaFunctionRelation
  analyticContinuationPathClosed : H.analyticContinuationPath

def HypergeometricSeriesClosed (H : HypergeometricSeriesPackage) : Prop :=
  H.radiusOfConvergence = 1 ∧ H.gammaFunctionRelation ∧ H.analyticContinuationPath

theorem hypergeometric_series_closed_from_evidence
    (H : HypergeometricSeriesPackage) (E : HypergeometricSeriesEvidence H) :
    HypergeometricSeriesClosed H := by
  exact And.intro E.radiusOfConvergenceClosed
    (And.intro E.gammaFunctionRelationClosed E.analyticContinuationPathClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse