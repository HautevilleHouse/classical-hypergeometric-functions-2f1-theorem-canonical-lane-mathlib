import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricSeriesPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  seriesConverges : Prop
  seriesDefined : Prop
  analyticContinuationExists : Prop

structure HypergeometricSeriesEvidence (H : HypergeometricSeriesPackage) where
  seriesConvergesClosed : H.seriesConverges
  seriesDefinedClosed : H.seriesDefined
  analyticContinuationExistsClosed : H.analyticContinuationExists

def HypergeometricSeriesClosed (H : HypergeometricSeriesPackage) : Prop :=
  H.seriesConverges ∧ H.seriesDefined ∧ H.analyticContinuationExists

theorem hypergeometric_series_closed_from_evidence (H : HypergeometricSeriesPackage)
    (E : HypergeometricSeriesEvidence H) : HypergeometricSeriesClosed H := by
  exact And.intro E.seriesConvergesClosed (And.intro E.seriesDefinedClosed E.analyticContinuationExistsClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse
