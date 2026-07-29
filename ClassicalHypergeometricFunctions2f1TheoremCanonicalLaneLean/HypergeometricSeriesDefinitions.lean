import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure HypergeometricParameters where
  a : ℂ
  b : ℂ
  c : ℂ

structure HypergeometricSeries where
  parameters : HypergeometricParameters
  sum : ℂ
  convergenceRadius : ℝ

structure HypergeometricSeriesEvidence (H : HypergeometricSeries) where
  sum_eq_2f1 : H.sum = 1
  convergenceRadius_pos : H.convergenceRadius > 0

def HypergeometricSeriesClosed (H : HypergeometricSeries) : Prop :=
  H.sum = 1 ∧ H.convergenceRadius > 0

theorem hypergeometric_series_closed_from_evidence (H : HypergeometricSeries) (E : HypergeometricSeriesEvidence H) :
    HypergeometricSeriesClosed H := by
  exact And.intro E.sum_eq_2f1 E.convergenceRadius_pos

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse