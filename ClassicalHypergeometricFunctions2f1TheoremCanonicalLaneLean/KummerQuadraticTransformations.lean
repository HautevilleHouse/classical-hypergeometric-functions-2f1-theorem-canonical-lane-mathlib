import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean

structure KummerQuadraticTransformation where
  inputSeries : HypergeometricSeries
  outputSeries : HypergeometricSeries
  transformationFormula : Prop
  validityCondition : Prop

structure KummerQuadraticEvidence (K : KummerQuadraticTransformation) where
  transformationFormulaClosed : K.transformationFormula
  validityConditionClosed : K.validityCondition

def KummerQuadraticClosed (K : KummerQuadraticTransformation) : Prop :=
  K.transformationFormula ∧ K.validityCondition

theorem kummer_quadratic_closed_from_evidence (K : KummerQuadraticTransformation) (E : KummerQuadraticEvidence K) :
    KummerQuadraticClosed K := by
  exact And.intro E.transformationFormulaClosed E.validityConditionClosed

end ClassicalHypergeometricFunctions2f1TheoremCanonicalLaneLean
end HautevilleHouse