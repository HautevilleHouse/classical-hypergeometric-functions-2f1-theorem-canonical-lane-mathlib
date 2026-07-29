import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure EulerIntegralRepresentationPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  integralConverges : Prop
  equalsSeries : Prop
  contourDeformable : Prop

structure EulerIntegralRepresentationEvidence (E : EulerIntegralRepresentationPackage) where
  integralConvergesClosed : E.integralConverges
  equalsSeriesClosed : E.equalsSeries
  contourDeformableClosed : E.contourDeformable

def EulerIntegralRepresentationClosed (E : EulerIntegralRepresentationPackage) : Prop :=
  E.integralConverges ∧ E.equalsSeries ∧ E.contourDeformable

theorem euler_integral_representation_closed_from_evidence (E : EulerIntegralRepresentationPackage)
    (Ev : EulerIntegralRepresentationEvidence E) : EulerIntegralRepresentationClosed E := by
  exact And.intro Ev.integralConvergesClosed (And.intro Ev.equalsSeriesClosed Ev.contourDeformableClosed)

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse
